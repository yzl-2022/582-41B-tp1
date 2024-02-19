<?php

namespace App\Http\Controllers;

use App\Models\Etudiant;
use App\Models\Ville;
use Illuminate\Http\Request;

class EtudiantController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $etudiants = Etudiant::all();
        return view('etudiant.index', ['etudiants'=>$etudiants]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $villes = Ville::all();
        //dd($villes);

        return view('etudiant.create', ['villes'=>$villes]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
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
            'ville_id'          => $request->ville_id
        ]);

        return redirect()->route('etudiant.show', $etudiant->id)->with('success', 'Étudiant créé avec succès.');
    }

    /**
     * Display the specified resource.
     *
     * @param  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id) //why does show(Etudiant $etudiant) return undefined? but show($id) works.
    {
        $etudiant = Etudiant::find($id);
        //dd($etudiant);

        return view('etudiant.show', ['etudiant'=>$etudiant]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $villes = Ville::all();
        $etudiant = Etudiant::find($id);
        return view('etudiant.edit', ['etudiant'=>$etudiant, 'villes'=>$villes]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'nom'               => 'required|string|max:255',
            'adresse'           => 'required|string',
            'telephone'         => 'nullable|string',
            'email'             => 'required|email',
            'date_de_naissance' => 'required|date',
            'ville_id'          => 'required|numeric'
        ]);

        $etudiant = Etudiant::find($id);

        if($etudiant){
            $etudiant->update([
                'nom'               => $request->nom,
                'adresse'           => $request->adresse,
                'telephone'         => $request->telephone,
                'email'             => $request->email,
                'date_de_naissance' => $request->date_de_naissance,
                'ville_id'          => $request->ville_id
            ]);

            return redirect()->route('etudiant.show', $id)->with('success', 'Étudiant modifié avec succès.');
        }else{
            return redirect()->route('etudiant.show', $id);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $etudiant = Etudiant::find($id);
        if($etudiant){
            $etudiant->delete();
            return redirect()->route('etudiant.index')->with('success', 'Étudiant supprimé avec succès.');
        }else{
            return redirect()->route('etudiant.show', $id);
        }
    }
}
