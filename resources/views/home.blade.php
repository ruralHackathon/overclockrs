@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

               
                    
                    <div id="map">
                        
                        
                        
                    </div> 
                    
                    <div style="margin-top: 10px; margin-left: 40px;">
                        <button class="btn btn-primary" onclick="#" >Visita</button>
                        <input type="text" placeholder="monumento" style="margin-left: 300px;" disabled="true">
                    
</div>
                </div>

                  
                    
@endsection
