# OPTIMUM
___

## Contexte

Ce projet répond à une évaluation dans le cadre d'une formation de Développeur Web et Web Mobile. L'objectif est de créer un site de A à Z à partir de la base d'un CMS (Wordpress) répondant à une demande client.
___

## Demande client

La salle de sport “OPTIMUM” veut refaire son site internet, le directeur Monsieur Ga souhaite moderniser son site en ajoutant un module de réservation pour les différents cours de sport et autres services comme les séances de yoga.
Le directeur souhaite aussi rendre ce nouveau site internet accessible sur mobile. Une tablette sera aussi mise à disposition à l’entrée de la salle de sport pour confirmer la présence des inscrits aux séances réservées. Monsieur Ga souhaite conserver le rôle premier du site qui est d’informer et de présenter la salle de sport au travers de photos et textes pouvant être vus sur les moteurs de recherche et réseaux sociaux.
___

## Cahier des charges

Vous trouverez le cahier des charges du projet "Optimum" et la maquette du site à la racine du projet dans les fichiers :
```
# Cahier des charges : optimum-cdc.md

# Maquette du site : optimum-wireframe.jpg
```
___

## Accès au site

Accéder au site Optimum en cliquant sur ce lien : http://jean.devweb.cfa.nc/wordpress-optimum/accueil/

### Plan du site
Voici le plan du site :

- Accueil
- Les cours
    - Cours collectifs
    - Cours particuliers
    - Séances
- Les offres
- Réservations
- Contact

___

## Installation du projet en local

Dans le cas d'une installation de ce projet dans un environnement local, voici la démarche à suivre : 

1. Cloner le projet :
    ```
    git clone https://github.com/jeanmasso/wordpress-optimum.git
    ```

2. Déplacer le projet à la racine du dossier "htdocs" de votre pile de serveurs web ("server stack web") soit XAMP, MAMP,... :
    ```
    # MAMP : /MAMP/htdocs/wordpress-optimum
    # XAMPP : /xampp/htdocs/wordpress-optimum
    ```
   
3. Installer la base de données 'optimum' à partir du fichier à la racine du projet "optimum.sql" :
   ```
   /wordpress-optimum/optimum.sql
   ```
   
4. Aller dans le fichier "wp_config.php" et configurer les accès à la base de données :
   ```injectablephp
    /** The name of the database for WordPress */
    define( 'DB_NAME', 'optimum' );
    
    /** MySQL database username */
    define( 'DB_USER', 'root' );
    
    /** MySQL database password */
    define( 'DB_PASSWORD', 'root' );
    
    /** MySQL hostname */
    define( 'DB_HOST', 'localhost' );
   ```
   
5. Maintenant que le projet est installé, aller sur le lien suivant : http://localhost:8888/wordpress-optimum/
    - Pour accéder à l'administrateur Wordpress du projet, aller sur ce lien : http://localhost:8888/wordpress-optimum/wp-admin
    - Voici les accès à l'administrateur Wordpress du projet :
      ```
      # Identifiant : optimum
      # Mot de passe : H(IO2PE7b9EYlRaujv
      ```
    
### Thème

Lorsque vous êtes connecté en tant qu'administrateur Wordpress, aller sur "Apparence" puis "Thèmes" et parmi les thèmes proposés, activer le thème : "Optimum Fitness".

### Plugins

Lorsque vous êtes connecté en tant qu'administrateur Wordpress, aller sur "Extensions" puis "Extensions installées" et activer les extensions suivantes :
"Optimum Plugin Contact", "Optimum Plugin Cours" et "Optimum Plugin Offres".

___

## Reste à faire

Maintenant que la première version du site est fonctionnel, il faut gérer les places des cours et des séances et permettre d'afficher les différents cours via un calendrier afin d'offrir aux utilisateurs une meilleure visibilité des choix qu'ils peuvent faire.