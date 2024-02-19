@extends('layouts.app')
@section('title', 'Modifier étudiant')
@section('content')
<nav class="mt-3" aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="/">Accueil</a></li>
    <li class="breadcrumb-item"><a href="/etudiants">Étudiants</a></li>
    <li class="breadcrumb-item active" aria-current="page">Modifier un étudiant</li>
  </ol>
</nav>
<section class="pb-4 text-center container">
    <h1>Modifier un étudiant</h1>
</section>
{{--Ajouter la formulaire--}}
@endsection