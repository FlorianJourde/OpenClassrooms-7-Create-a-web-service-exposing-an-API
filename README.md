# OpenClassrooms
- Développeur d'application
- Parcours PHP/Symfony
- Projet 7

## Créez un web service exposant une API

![OpenClassrooms banneer](./ressources/images/bilemo.jpg)

[![Symfony Badge](https://img.shields.io/badge/Symfony-5.4-000000?style=flat-square&logo=symfony&logoColor=white/)](https://symfony.com/) [![Composer Badge](https://img.shields.io/badge/Composer-2.4-6c3e22?style=flat-square&logo=composer&logoColor=white/)](https://getcomposer.org/) [![PHP Badge](https://img.shields.io/badge/PHP-7.4-7a86b8?style=flat-square&logo=php&logoColor=white/)](https://www.php.net/) [![Draw.io Badge](https://img.shields.io/badge/Diagrams.net-20.7-F08705?style=flat-square&logo=diagrams.net&logoColor=white/)](https://www.diagrams.net/) [![Postman Badge](https://img.shields.io/badge/Diagrams.net-10.8.7-FF6C37?style=flat-square&logo=Postman&logoColor=white/)](https://www.postman.com/)

### À propos

Bonjour et bienvenue sur le dépôt de mon travail, qui traite du sixième projet d'OpenClassrooms, intitulé **Créez un web service exposant une API** ! Vous trouverez, ci-après, la procédure d'installation pour prendre en main le code du projet, ainsi que la base de données et sa structure, conçue pour fonctionner avec.

Vous trouverez également, dans le dossier **ressources/diagrams**, les diagrammes UML conçus en amont du projet, ainsi que le compte rendu de qualité de code, disponible en cliquant sur le bouton **SymfonyInsight**, présent ci-dessus.

[comment]: <> ([![Preview site]&#40;https://img.shields.io/badge/Preview%20site--327cbd?style=for-the-badge&logo=InternetExplorer&logoColor=white&#41;]&#40;https://snowtricks.florianjourde.com/&#41;)

---

## Remarque

Pour pouvoir installer ce projet, le gestionnaire de dépendance **Composer** doit être présent sur votre machine, la plateforme de test d'API **Postman**, un serveur local sous **PHP 7.4**, ainsi que le framework **Symfony** en version **5.4**. Si vous ne disposez pas de ces outils, vous pourrez les télécharger et les installer, en suivant ces liens :
- Télécharger [Composer](https://getcomposer.org/)
- Télécharger [Symfony](https://symfony.com/download)
- Télécharger [Postman](https://www.postman.com/)
- Télécharger [Wamp](https://www.wampserver.com/) (Windows)
- Télécharger [Mamp](https://www.wampserver.com/) (Mamp)

---

[comment]: <> (## Installation)

[comment]: <> (1. À l'aide d'un terminal, créez un dossier à l'emplacement souhaité pour l'installation du projet. Lancez la commande suivante :)

[comment]: <> (```shell)

[comment]: <> (git clone https://github.com/FlorianJourde/OpenClassrooms-6-Develop-the-SnowTricks-community-site.git)

[comment]: <> (```)

[comment]: <> (2. Lancez cette commande pour vous rendre dans le dossier adequat :)

[comment]: <> (```shell)

[comment]: <> (cd OpenClassrooms-6-Develop-the-SnowTricks-community-site)

[comment]: <> (```)

[comment]: <> (3. À la racine de ce répertoire, lancez la commande suivante pour installer les dépendances Composer :)

[comment]: <> (```shell)

[comment]: <> (composer install)

[comment]: <> (```)

[comment]: <> (4. Une fois l'installation des dépendances terminée, vous devez maintenant modifier le fichier `.env.local` situé à la racine du projet, pour vous connecter à votre base de données. À la ligne 31, remplacez les identifiants de connexion par vos identifiants de base de données locale :)

[comment]: <> (```php)

[comment]: <> (DATABASE_URL="mysql://username:password@127.0.0.1:3306/snowtricks_db?serverVersion=5.7.36&charset=utf8mb4")

[comment]: <> (```)

[comment]: <> (5. Ensuite, importez simplement le fichier `snowtricks_db.sql`, présent dans le dossier `ressources`, dans votre base de données SQL locale. Si toutes les informations ont correctement été renseignées, la connexion devrait se faire automatiquement. Vous pouvez effectuer cette action sur WAMP ou MAMP, à cette étape.)

[comment]: <> (6. Via le terminal, lancez l'une des deux commandes pour démarrer l'application Symfony :)

[comment]: <> (```zsh)

[comment]: <> (php -S localhost:8000 -t public)

[comment]: <> (```)

[comment]: <> (ou)

[comment]: <> (```zsh)

[comment]: <> (symfony server:start)

[comment]: <> (```)

[comment]: <> (Si vous rencontrez un problème à cette étape, veuillez vous assurer que WAMP ou MAMP est présent et lancé sur votre machine et que le démarrage du serveur local de Symfony a bien été effectué depuis le dossier racine du projet.)

[comment]: <> (7. Pour pouvoir tester les fonctionnalités du site, veuillez utiliser les identifiants par défaut :)

[comment]: <> (- Admin)

[comment]: <> (	- ID : admin@admin.com)

[comment]: <> (	- MDP : 123456)

[comment]: <> (- Editor)

[comment]: <> (	- ID : editor@editor.com)

[comment]: <> (	- MDP : 123456)

[comment]: <> (- User)

[comment]: <> (	- ID : user@user.com)

[comment]: <> (	- MDP : 123456)

### Merci pour votre attention !