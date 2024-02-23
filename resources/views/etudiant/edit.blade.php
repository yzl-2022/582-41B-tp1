@extends('layouts.app')
@section('title', 'Modifier étudiant')
@section('content')
<nav class="mt-3" aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="{{ asset('/') }}">Accueil</a></li>
    <li class="breadcrumb-item"><a href="{{ route('etudiant.index') }}">Étudiants</a></li>
    <li class="breadcrumb-item active" aria-current="page">Modifier un étudiant</li>
  </ol>
</nav>
<section class="pb-4 text-center container">
    <h1>Modifier un étudiant</h1>
</section>
@isset($etudiant)
{{--Ajouter la formulaire--}}
<div class="row justify-content-center mt-5 mb-5">
    <div class="col-md-8">
        <div class="card">
            <div class="card-body">
                <form method="POST">{{--don't add action for PUT or DELETE--}}
                    @csrf
                    @method('PUT')
                    <div class="mb-3">
                        <label for="nom" class="form-label">Nom</label>
                        <input type="text" class="form-control" id="nom" name="nom" value="{{ old('nom', $etudiant->nom) }}">
                        @if ($errors->has('nom'))
                            <div class="text-danger mt-2">
                                {{$errors->first('nom')}}
                            </div>
                        @endif
                    </div>
                    <div class="mb-3">
                        <label for="adresse" class="form-label">Adresse</label>
                        <input type="text" class="form-control" id="adresse" name="adresse" value="{{ old('adresse', $etudiant->adresse) }}">
                        @if ($errors->has('adresse'))
                            <div class="text-danger mt-2">
                                {{$errors->first('adresse')}}
                            </div>
                        @endif
                    </div>
                    <div class="mb-3">
                        <label for="telephone" class="form-label">Téléphone</label>
                        <input type="tel" class="form-control" id="telephone" name="telephone" value="{{ old('telephone', $etudiant->telephone) }}">
                        @if ($errors->has('telephone'))
                            <div class="text-danger mt-2">
                                {{$errors->first('telephone')}}
                            </div>
                        @endif
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Courriel</label>
                        <input type="email" class="form-control" id="email" name="email" value="{{ old('email', $etudiant->email) }}">
                        @if ($errors->has('email'))
                            <div class="text-danger mt-2">
                                {{$errors->first('email')}}
                            </div>
                        @endif
                    </div>
                    <div class="mb-3">
                        <label for="date_de_naissance" class="form-label">DateDate de naissance</label>
                        <input type="date" class="form-control" id="date_de_naissance" name="date_de_naissance" value="{{ old('date_de_naissance', $etudiant->date_de_naissance) }}" min="1923-01-01" max="2023-12-31">
                        @if ($errors->has('date_de_naissance'))
                            <div class="text-danger mt-2">
                                {{$errors->first('date_de_naissance')}}
                            </div>
                        @endif
                    </div>
                    <div class="mb-3">
                        <label for="ville_id" class="form-label">Ville</label>
                        <select class="form-select" name="ville_id" id="ville_id">
                          @foreach($villes as $ville)
                          <option value="{{ $ville->id }}" {{ old('ville_id') == $ville->id || $etudiant->ville_id == $ville->id ? 'selected' : '' }}>{{ $ville->nom }}</option>
                          @endforeach
                        </select>
                        @if ($errors->has('ville_id'))
                            <div class="text-danger mt-2">
                                {{$errors->first('ville_id')}}
                            </div>
                        @endif
                    </div>
                    <button type="submit" class="btn btn-primary">Modifier</button>
                </form>
            </div>
        </div>
    </div>
</div>
@else
<div class="row justify-content-center">
    <div class="col-md-8 alert alert-danger text-center">Étudiant n'exist pas pour modifier.</div>
</div>
@endisset
@endsection