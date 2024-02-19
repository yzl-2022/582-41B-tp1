@extends('layouts.app')
@section('title', 'Étudiants')
@section('content')
<nav class="mt-3" aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="/">Accueil</a></li>
    <li class="breadcrumb-item active" aria-current="page">Étudiants</li>
  </ol>
</nav>
<section class="pb-4 text-center container">
    <h1>Étudiants</h1>
</section>
<div class="album container">
    <div class="row row-cols-md-3">
        @forelse($etudiants as $etudiant)
        <div class="col container mb-4">
            <div class="card shadow-sm h-100">
                <div class="card-body">
                    <h5 class="card-title">{{ $etudiant->nom }}</h5>
                    <p class="card-text">{{ $etudiant->adresse }}</p>
                    <p class="card-text">{{ $etudiant->telephone }}</p>
                    <p class="card-text">{{ $etudiant->email }}</p>
                    <p class="card-text">{{ $etudiant->date_de_naissance }}</p>
                    <p class="card-text"><strong>Ville: </strong>{{ $etudiant->ville->nom }}</p>
                    <a href="{{ route('etudiant.show', $etudiant->id) }}" class="card-link">Voir plus</a>
                </div>
            </div>
        </div>
        @empty
            <div class="alert alert-danger">Aucun étudiant à afficher!</div>
        @endforelse
    </div>
</div>
@endsection