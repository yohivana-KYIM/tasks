README.md : Backend Task Management API
Introduction

Ce projet est une API Laravel permettant la gestion des tâches. Il permet aux utilisateurs de créer, lire, mettre à jour et supprimer des tâches (CRUD) via des endpoints RESTful. L'API utilise Laravel 10.x avec la base de données MySQL, Pinia pour la validation côté serveur, et Axios pour consommer l'API depuis le frontend Vue.js.
Fonctionnalités

    CRUD des tâches : Créer, lire, mettre à jour et supprimer des tâches.
    Pagination : Retourne les tâches paginées avec les liens de navigation.
    Validation des entrées : Les requêtes d'API sont validées pour garantir des données cohérentes.
    Tests unitaires : Écrits avec PHPUnit pour tester l'API.

Prérequis

    Serveur Web : Apache, Nginx, ou autre.
    Base de données : MySQL ou SQLite.
    PHP : Version 8.0 ou supérieure.
    Composer : Utilisé pour installer les dépendances de Laravel.

Configuration

    Cloner le dépôt :

git clone <URL-du-dépôt>
cd backend-task

Copiez le fichier .env :

cp .env.example .env

Configurez la base de données : Ouvrez le fichier .env et configurez les informations de connexion à la base de données :

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=tasks_db
DB_USERNAME=root
DB_PASSWORD=yourpassword

Appliquez les migrations :

php artisan migrate

Ajoutez des données de test :

php artisan db:seed --class=TaskSeeder

Démarrez le serveur :

    php artisan serve

    Accédez à l'API :
        L'API sera accessible sur http://localhost:8000.

Routes

L'API expose les routes suivantes :

    Lister toutes les tâches : GET /api/tasks
    Créer une nouvelle tâche : POST /api/tasks
    Voir une tâche spécifique : GET /api/tasks/{id}
    Mettre à jour une tâche : PUT /api/tasks/{id}
    Supprimer une tâche : DELETE /api/tasks/{id}

Tests Unitaires

    Exécutez les tests :

    php artisan test

    Résultats des tests :
        test_can_list_tasks : Vérifie que l'API retourne bien une liste paginée des tâches.
        test_can_create_task : Vérifie que l'API peut créer une nouvelle tâche.
        test_can_show_task : Vérifie que l'API peut afficher une tâche spécifique.
        test_can_update_task : Vérifie que l'API peut mettre à jour une tâche.
        test_can_delete_task : Vérifie que l'API peut supprimer une tâche.

Guide de déploiement

Pour déployer l'API Laravel sur un serveur de production, assurez-vous de suivre ces étapes :

    Configurer Apache ou Nginx pour pointer vers le répertoire public de Laravel.
    Configurer les variables d'environnement appropriées (.env) pour production.
    Utiliser un serveur Web sécurisé (SSL/HTTPS).
    Gérer les versions PHP et MySQL via un gestionnaire de versions pour maintenir la compatibilité.

Auteurs: ABDOU CHIRAC 