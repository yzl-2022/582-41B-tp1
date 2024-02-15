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

Dans ce fichier, Laravel génère automatiquement 7 méthodes: 
- index() -- pour lister tous les étudiants -- GET
- create() -- pour afficher le formulaire d'ajouter un étudiant -- GET
- store(Request $request) -- pour enregistrer un nouvel étudiant dans la base de données -- POST
- show(Etudiant $etudiant) -- pour afficher un étudiant -- GET
- edit(Etudiant $etudiant) -- pour afficher le formulaire de modifier un étudiant -- GET
- update(Request $request, Etudiant $etudiant) -- pour mettre à jour l'étudiant modifié dans la base de données -- PUT
- destroy(Etudiant $etudiant) -- pour supprimer un étudiant -- DELETE

## 7. Création du Layout

J'ai utilisé [la documentation de Bootstrap](https://getbootstrap.com/docs/5.3/components/navbar/) comme référence. Certains extraits sont tirés de là et adaptés pour le site.

- app.blade.php -- extraits répétitifs tels que la barre de menus, l'en-tête, le pied de page et l'importation de CSS et JS
- welcome.blade.php -- page d'accueil avec description du site
- index.blade.php -- 
- show.blade.php
- create.blade.php
- edit.blade.php

## 8. Conception Ergonomique

## 9. Affichage de la Liste des Étudiants

Enregistrer la route dans /routes/web.php

```php
Route::get('/etudiants', [App\Http\Controllers\EtudiantController::class, 'index'])->name('etudiant.index');
```

Compléter la fonction **index** dans contrôleur

```php
public function index()
{
    $etudiants = Etudiant::all();
    return view('etudiant.index',['etudiants'=>$etudiants]);
}
```

## 10. Création d'un Nouvel Étudiant

Enregistrer la route dans /routes/web.php

```php
Route::get('/create/etudiant', [App\Http\Controllers\TaskController::class, 'create'])->name('etudiant.create');
Route::post('/create/etudiant', [App\Http\Controllers\TaskController::class, 'store'])->name('etudiant.store');
```

Compléter les fonctions **create** et **store** dans contrôleur

```php
public function create()
{
    return view('etudiant.create');
}
```

```php
public function store(Request $request)
{
    $request->validate([
        'nom'               => 'required|string|max:255',
        'adresse'           => 'required|string',
        'telephone'         => 'nullable|string',
        'email'             => 'required|email',
        'date_de_naissance' => 'required|date',
    ]);

    $etudiant = Etudiant::create([
        'nom'               => $request->nom,
        'adresse'           => $request->adresse,
        'telephone'         => $request->telephone,
        'email'             => $request->email,
        'date_de_naissance' => $request->date_de_naissance,
        'ville_id'          => rand(1,15)
    ]);

    return redirect()->route('etudiant.show', $etudiant->id)->with('success', 'Étudiant créé avec succès.');
}
```

## 11. Affichage d'un Étudiant Sélectionné

Enregistrer la route dans /routes/web.php

```php
Route::get('/etudiant/{id}', [App\Http\Controllers\EtudiantController::class, 'show'])->where('id', '[0-9]+')->name('etudiant.show');
```

Compléter la fonction **show** dans contrôleur

```php
public function show(Etudiant $etudiant)
{
    return view('etudiant.show', ['etudiant'=>$etudiant]);
}
```

## 12. Mise à Jour d'un Étudiant

Enregistrer la route dans /routes/web.php

```php
Route::get('/edit/etudiant/{id}', [App\Http\Controllers\TaskController::class, 'edit'])->where('id', '[0-9]+')->name('etudiant.edit');
Route::put('/edit/etudiant/{id}', [App\Http\Controllers\TaskController::class, 'update'])->where('id', '[0-9]+')->name('etudiant.update');
```

Compléter les fonctions **edit** et **update** dans contrôleur

```php
public function edit(Etudiant $etudiant)
{
    return view('etudiant.edit', ['etudiant'=>$etudiant]);
}
```

```php
public function update(Request $request, Etudiant $etudiant)
{
    $request->validate([
        'nom'               => 'required|string|max:255',
        'adresse'           => 'required|string',
        'telephone'         => 'nullable|string',
        'email'             => 'required|email',
        'date_de_naissance' => 'required|date',
        'ville_id'          => 'required|numeric'
    ]);

    $etudiant->update([
        'nom'               => $request->nom,
        'adresse'           => $request->adresse,
        'telephone'         => $request->telephone,
        'email'             => $request->email,
        'date_de_naissance' => $request->date_de_naissance,
        'ville_id'          => $request->ville_id
    ]);

    return redirect()->route('etudiant.show', $etudiant->id)->with('success', 'Étudiant modifié avec succès.');
}
```

## 13. Suppression d'un Étudiant

Enregistrer la route dans /routes/web.php

```php
Route::delete('/etudiant/{id}', [App\Http\Controllers\TaskController::class, 'destroy'])->where('id', '[0-9]+')->name('etudiant.delete');
```

Compléter la fonction **destroy** dans contrôleur

```php
public function destroy(Etudiant $etudiant)
{
    $etudiant->delete();

    return redirect()->route('etudiant.index')->with('success', 'Étudiant supprimé avec succès.');
}
```