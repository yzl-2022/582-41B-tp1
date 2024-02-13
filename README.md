# Laravel - TP1 - Documentation

Cet site permet de collecter les informations nécessaires, de remplir la base de données avec des données aléatoires, et de créer des interfaces fonctionnelles permettant de visualiser, saisir, mettre à jour et supprimer les informations des étudiants.

**lien ver webdev** <>

**lien ver github** <https://github.com/yzl-2022/582-41B-tp1.git>

***********************************

## 1. Création du Projet Laravel 

`composer create-project --prefer-dist laravel/laravel Maisonneuve2296635`

## 2. Création des Modèles

`cd Maisonneuve2296635`

`php artisan make:model Ville -m`

Cette commande va créer deux fichiers: /app/Models/Ville.php et /database/migrations/YYYY_MM_DD_NUMBER_create_villes_table.php

#### Ajouter dans /app/Models/Ville.php

```php
class Ville extends Model
{
    use HasFactory;

    protected $fillable = [
        'nom'
    ];
}
```

`php artisan make:model Etudiant -m`

Cette commande va créer deux fichiers: /app/Models/Etudiant.php et /database/migrations/YYYY_MM_DD_NUMBER_create_etudiants_table.php

#### Ajouter dans /app/Models/Etudiant.php

```php
class Etudiant extends Model
{
    use HasFactory;

    protected $fillable = [
        'nom',
        'adresse',
        'telephone',
        'email',
        'date_de_naissance',
        'ville_id'
    ];
}
```

## 3. Création des Tables

Avant de créer les tables, il fault créer une base de données dans MySQL:

`CREATE DATABASE laravel_tp1;`

Et configurer le fichier .env dans le dossier racine:

```
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=laravel_tp1
DB_USERNAME=votre_username
DB_PASSWORD=votre_password
```

#### Ajouter dans /database/migrations/YYYY_MM_DD_NUMBER_create_villes_table.php

```php
public function up()
    {
        Schema::create('villes', function (Blueprint $table) {
            $table->id();
            $table->string('nom');
            $table->timestamps();
        });
    }
```

#### Ajouter dans /database/migrations/YYYY_MM_DD_NUMBER_create_etudiants_table.php

```php
public function up()
    {
        Schema::create('etudiants', function (Blueprint $table) {
            $table->id();
            $table->string('nom');
            $table->text('adresse');
            $table->string('telephone');
            $table->string('email');
            $table->date('date_de_naissance');
            $table->unsignedBigInteger('ville_id');
            $table->timestamps();
            //foreign-key
            $table->foreign('ville_id')->references('id')->on('villes')->onDelete('cascade');
        });
    }
```

`php artisan migrate`

Cette commande va créer les tables « villes » et « etudiants ». **Attention:** Il faut créer la table « villes » avant de créer la table « etudiants » à cause de la clé étrangère.

## 4. Saisie des Villes

`php artisan make:factory VilleFactory --model=Ville`

Cette commande va créer un fichier: /database/factories/VilleFactory.php

#### Ajouter dans /database/factories/VilleFactory.php

```php
public function definition()
    {
        return [
            'nom' => $this->faker->word
        ];
    }
```

Utiliser Tinker pour générer des données de test: 

`php artisan tinker`

`> \App\Models\Ville::factory()->times(15)->create();`

Cette commande va créer 15 villes et les enregistrer dans la base de données.

## 5. Saisie des Étudiants

`php artisan make:factory EtudiantFactory --model=Etudiant`

Cette commande va créer un fichier: /database/factories/EtudiantFactory.php

#### Ajouter dans /database/factories/EtudiantFactory.php

```php
public function definition()
    {
        return [
            'nom' => $this->faker->name,
            'adresse' => $this->faker->address,
            'telephone' => $this->faker->phoneNumber,
            'email' => $this->faker->email,
            'date_de_naissance' => $this->faker->dateTimeBetween('-100 years', 'now')->format('Y-m-d'),
            'ville_id' => $this->faker->numberBetween(1,15) //étant donné que nous avons déjà créé 15 villes
        ];
    }
```

Utiliser Tinker pour générer des données de test: 

`php artisan tinker`

`> \App\Models\Etudiant::factory()->times(100)->create();`

Cette commande va créer 100 étudiants et les enregistrer dans la base de données.

## 6. Création des Contrôleurs

`php artisan make:controller EtudiantController -m Etudiant`

Cette commande va créer un fichier: /app/Http/Controllers/EtudiantController.php

``

## 7. Création du Layout



## 8. Conception Ergonomique

``

## 9. Affichage de la Liste des Étudiants



## 10. Création d'un Nouvel Étudiant



## 11. Affichage d'un Étudiant Sélectionné


## 12. Mise à Jour d'un Étudiant



## 13. Suppression d'un Étudiant


