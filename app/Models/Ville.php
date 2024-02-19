<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ville extends Model
{
    use HasFactory;

    protected $fillable = [
        'nom'
    ];

    /* relationship with the table etudiants */
    public function etudiants()
    {
        return $this->hasMany(Etudiant::class);
    }
}
