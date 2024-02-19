@extends('layouts.app')
@section('title', 'Accueil')
@section('content')
<nav class="mt-3" aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item active" aria-current="page">Accueil</li>
  </ol>
</nav>
<div class="p-5 mb-4 bg-body-tertiary rounded-3">
  <div class="container-fluid py-5">
    <h1 class="display-5 fw-bold">Bienvenue chez la communauté étudiante</h1>
    <p class="col-md-10 fs-4">Nous sommes toujours ici lorsque vous avez besoin d'accompagnement, d'aide ou de quelqu'un pour partager la joie.</p>
    <a class="btn btn-primary btn-lg" href="{{ route('etudiant.create') }}">Rejoignez-nous</a>
  </div>
</div>
<div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="{{ asset('img/activity.jpg') }}" class="d-block w-100 img-fluid" alt="image of activity">
    </div>
    <div class="carousel-item">
      <img src="{{ asset('img/group.jpg') }}" class="d-block w-100 img-fluid" alt="image of group">
    </div>
    <div class="carousel-item">
      <img src="{{ asset('img/devoir.jpg') }}" class="d-block w-100 img-fluid" alt="image of homework">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
@endsection