<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Journey;
use App\Models\Country;
use Cache;
use Log;
use GuzzleHttp\Client;



class JourneyController extends Controller
{
   
    public function create(Request $request)
    {
        $request->validate([
            'journey_date' => 'required',
            'location' => 'required',
            'time' => 'required',
        ]);
        $new_journey = new Journey([
            'journey_date' =>$request->get('journey_date'),
            'location' => $request->get('location'),
            'time' => $request->get('time'),
        ]);
        $new_journey->save();
    return back()->with('message', 'The journey has been created!');
    }
    public function getJourney(Request $request)
    {
       
        $all_countries =  Country::all();
        $all_journeys =  Journey::latest()->first();
        $comp_journeys = Journey::all();
       
       return view('dashboard',compact('all_journeys','all_countries','comp_journeys'));
    }
    // public function getApi()
    // {
    // $minutes = 60;
    // $forecast = Cache::remember('forecast', $minutes, function () {
    //     Log::info("Not from cache");
    //     $app_id = config("app_id");
    //     $app_code = config("app_code");
    //     $lat = config("lat_default");
    //     $lng = config("lng_default");
    //     $url = "https://api.openweathermap.org/data/3.0/onecall?lat={lat}&lon={lon}&exclude={part}&appid={876ac503713b15631a0e337e8aa61614}";
    //     Log::info($url);
    //     $client = new Client();
    //     $res = $client->get($url);
    //     if ($res->getStatusCode() == 200) {
    //     $j = $res->getBody();
    //     $obj = json_decode($j);
    //     $forecast = $obj->hourlyForecasts->forecastLocation;
    //     }
    //     return $forecast;
    // });
    // return view('dashboard', ["forecast" => $forecast]);
    // }
  
    
}
