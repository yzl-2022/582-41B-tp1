@extends('layouts.app')
@section('title', 'Étudiants')
@section('content')
<section class="py-5 text-center container">
    <h1>Étudiants</h1>
</section>
<div class="album container">
    <div class="row">
        @forelse($etudiants as $etudiant)
        <div class="col-md-4 container">
            <div class="card shadow-sm mb-4">
                <div class="card-body">
                    <h5 class="card-title">{{ $etudiant->nom }}</h5>
                    <p class="card-text">{{ $etudiant->adresse }}</p>
                    <p class="card-text">{{ $etudiant->telephone }}</p>
                    <p class="card-text">{{ $etudiant->email }}</p>
                    <p class="card-text">{{ $etudiant->date_de_naissance }}</p>
                    <p class="card-text">{{ $etudiant->ville }}</p>
                    <a href="#" class="card-link">Card link</a>
                    <a href="#" class="card-link">Another link</a>
                </div>
            </div>
        </div>
        @empty
            <div class="alert alert-danger">Aucun étudiant à afficher!</div>
        @endforelse
    </div>
</div>
@endsection