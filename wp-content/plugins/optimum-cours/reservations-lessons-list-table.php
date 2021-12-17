<?php

class ReservationListTable extends WP_List_Table
{
  function get_data()
  {
    global $wpdb;
    $table_name = $wpdb->prefix . 'reservations_lessons';
    return $wpdb->get_results("SELECT * FROM $table_name", ARRAY_A);
  }

  function column_id($item) {
    $actions = array(
      'edit' => sprintf('<a href="?page=edit-reservation-lesson&id=%s">%s</a>', $item['id'], 'Modifier'),
    );

    return sprintf('%s %s',
      $item['id'],
      $this->row_actions($actions)
    );
  }

  function column_lesson_id($item)
  {
    global $wpdb;
    $lesson_id = $item['lesson_id'];
    $table_name = $wpdb->prefix . 'posts';
    $lesson = $wpdb->get_row("SELECT * FROM $table_name WHERE ID=$lesson_id");
    return '<a href="' . $lesson->post_title . '">' . $lesson->post_title . '</a>';
  }

  function get_columns()
  {
    return array(
      'id' => 'ID',
      'name' => 'Nom',
      'mail' => 'Mail',
      'phone' => 'N° de téléphone',
      'lesson_id' => 'Cours',
    );
  }

  function get_sortable_columns()
  {
    return array(
      'id' => array('id', false),
      'lesson_id' => array('lesson_id', false),
    );
  }

  function column_default($item, $column_name)
  {
    return $item[$column_name];
  }

  function usort_reorder($a, $b)
  {
    $orderby = (!empty($_GET['orderby'])) ? $_GET['orderby'] : 'id';
    $order = (!empty($_GET['order'])) ? $_GET['order'] : 'asc';
    $result = strcmp($a[$orderby], $b[$orderby]);
    return ($order === 'asc') ? $result : -$result;
  }

  function prepare_items()
  {
    $data = $this->get_data();
    $columns = $this->get_columns();
    $sortable = $this->get_sortable_columns();
    $this->_column_headers = array($columns, array(), $sortable);
    usort($data, array($this, 'usort_reorder'));
    $this->items = $data;
  }
}