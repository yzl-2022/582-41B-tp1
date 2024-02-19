<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

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

    /* relationship with table villes */
    public function ville(){
        return $this->belongsTo(Ville::class);
    }
}
