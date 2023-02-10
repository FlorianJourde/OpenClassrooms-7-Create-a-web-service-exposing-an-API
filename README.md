# OpenClassrooms
- Développeur d'application
- Parcours PHP/Symfony
- Projet 7

## Créez un web service exposant une API

![OpenClassrooms banneer](./ressources/images/bilemo.jpg)

[![Symfony Badge](https://img.shields.io/badge/Symfony-5.4-000000?style=flat-square&logo=symfony&logoColor=white/)](https://symfony.com/) [![Composer Badge](https://img.shields.io/badge/Composer-2.4-6c3e22?style=flat-square&logo=composer&logoColor=white/)](https://getcomposer.org/) [![PHP Badge](https://img.shields.io/badge/PHP-7.4-7a86b8?style=flat-square&logo=php&logoColor=white/)](https://www.php.net/) [![Draw.io Badge](https://img.shields.io/badge/Diagrams.net-20.7-F08705?style=flat-square&logo=diagrams.net&logoColor=white/)](https://www.diagrams.net/) [![Postman Badge](https://img.shields.io/badge/Postman-10.8.7-FF6C37?style=flat-square&logo=Postman&logoColor=white/)](https://www.postman.com/)

### À propos

Bonjour et bienvenue sur le dépôt de mon travail, qui traite du septième projet d'OpenClassrooms, intitulé **Créez un web service exposant une API** ! Vous trouverez, ci-après, la procédure d'installation pour prendre en main le code du projet, ainsi que la base de données et sa structure, conçue pour fonctionner avec.

Vous trouverez également, dans le dossier **ressources**, les diagrammes UML conçus en amont du projet, la base de données au format SQL, ainsi qu'un lien vers la documentation de l'API, hébergée par Postman.

[![Documentation](https://img.shields.io/badge/Preview%20site--95aabd?style=for-the-badge&logo=Postman&logoColor=white)](https://documenter.getpostman.com/view/25406820/2s935sohQC)

---

## Remarque

Pour pouvoir installer ce projet, le gestionnaire de dépendance **Composer** doit être présent sur votre machine, la plateforme de test d'API **Postman**, un serveur local sous **PHP 7.4**, ainsi que le framework **Symfony** en version **5.4**. Si vous ne disposez pas de ces outils, vous pourrez les télécharger et les installer, en suivant ces liens :
- Télécharger [Composer](https://getcomposer.org/)
- Télécharger [Symfony](https://symfony.com/download)
- Télécharger [Postman](https://www.postman.com/)
- Télécharger [Wamp](https://www.wampserver.com/) (Windows)
- Télécharger [Mamp](https://www.wampserver.com/) (Mamp)

---

## Installation

1. À l'aide d'un terminal, créez un dossier à l'emplacement souhaité pour l'installation du projet. Lancez ensuite la commande suivante :

```shell
git clone https://github.com/FlorianJourde/OpenClassrooms-7-Create-a-web-service-exposing-an-API
```

2. Lancez cette commande pour vous rendre dans le dossier adequat :

```shell
cd OpenClassrooms-7-Create-a-web-service-exposing-an-API
```

3. À la racine de ce répertoire, lancez la commande suivante pour installer les dépendances Composer :

```shell
composer install
```

4. Une fois l'installation des dépendances terminée, vous devez maintenant dupliquer le fichier `.env` situé à la racine du projet, puis renommer le nouveau fichier en `.env.local`, pour vous connecter à votre base de données. À la ligne 31, remplacez les identifiants de connexion par vos identifiants de base de données locale :

```php
DATABASE_URL="mysql://username:password@127.0.0.1:3306/bilemo_db?serverVersion=5.7.36&charset=utf8mb4"
```

5. Ensuite, importez simplement le fichier `bilemo_db.sql`, présent dans le dossier `ressources`, dans votre base de données SQL locale. Si toutes les informations ont correctement été renseignées, la connexion devrait se faire automatiquement. Vous pouvez effectuer cette action sur WAMP ou MAMP, à cette étape.

6. Via le terminal, lancez l'une des deux commandes pour démarrer l'application Symfony :

```zsh
php -S localhost:8000 -t public
```

ou

```zsh
symfony server:start
```

Si vous rencontrez un problème à cette étape, veuillez vous assurer que WAMP ou MAMP est présent et lancé sur votre machine et que le démarrage du serveur local de Symfony a bien été effectué depuis le dossier racine du projet.

7. Une fois la connexion avec la base de données établie, vous pouvez commencer à tester les fonctionnalités de l'API via le logiciel Postman. Le logiciel doit être installé en local pour fonctionner correctement.

Vous trouverez les identifiants de connexion et toutes les autres informations nécéssaires directement sur la documentation de l'API, dont le lien se trouve en haut de ce fichier.

### Merci pour votre attention !