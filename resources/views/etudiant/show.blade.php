@extends('layouts.app')
@section('title', 'Étudiant')
@section('content')
<nav class="mt-3" aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="/">Accueil</a></li>
    <li class="breadcrumb-item"><a href="{{ route('etudiant.index') }}">Étudiants</a></li>
    <li class="breadcrumb-item active" aria-current="page">Étudiant</li>
  </ol>
</nav>
<section class="pb-4 text-center container">
    <h1>Étudiant</h1>
</section>
@isset($etudiant)
{{--show card--}}
<div class="row justify-content-center">
    <div class="col-md-8">
        <div class="card mb-5">
            <div class="card-header">
                <h5 class="card-title">{{ $etudiant->nom }}</h5>
            </div>
            <div class="card-body">
                <p class="card-text"><strong>Adresse: </strong>{{ $etudiant->adresse }}</p>
                <p class="card-text"><strong>Téléphone: </strong>{{ $etudiant->telephone }}</p>
                <p class="card-text"><strong>Courriel: </strong>{{ $etudiant->email }}</p>
                <p class="card-text"><strong>Date de naissance: </strong>{{ $etudiant->date_de_naissance }}</p>
                <p class="card-text"><strong>Ville: </strong>{{ $etudiant->ville->nom }}</p>
            </div>
            <div class="card-footer d-flex justify-content-between">
                <a href="{{ route('etudiant.edit', $etudiant->id) }}" class="btn btn-sm btn-outline-success">Modifier</a>
                <button type="button" class="btn btn-sm btn-outline-danger" data-bs-toggle="modal" data-bs-target="#deleteModal">
                    Supprimer
                </button>
            </div>
        </div>
    </div>
</div>
{{-- Bootstrap Modal --}}
<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
    <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
        <h1 class="modal-title fs-5 text-danger" id="DeleteModalLabel">Supprimer un étudiant</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            Êtes-vous sûr de supprimer cet étudiant ?
        </div>
        <div class="modal-footer">
        <button type="button" class="btn btn-sm btn-secondary" data-bs-dismiss="modal">Annuler</button>
        <form method="POST">
            @csrf
            @method('DELETE')
            <button type="submit" class="btn btn-sm btn-danger">Confirmer</button>
        </form>
        </div>
    </div>
    </div>
</div>
@else
<div class="row justify-content-center">
    <div class="col-md-8 alert alert-danger text-center">Étudiant n'exist pas.</div>
</div>
@endisset
@endsection