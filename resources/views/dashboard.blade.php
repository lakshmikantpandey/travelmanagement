<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
   <!-- JavaScript Bundle with Popper -->
   <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<title>Document</title>
</head>
<body>

<h2 style="background-color: yellow;" class="text-center">dashboard</h2>
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Create a journey plan
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Journey Plan</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="{{ route('create') }}"method="POST">
            @csrf
            <div class="row">
              <input type="hidden" name="user_id" value="1">
                <div class="col-sm-4">
                    <label for="date">Pick a journey date</label>
                    <input type="date" name="journey_date">
                </div>
                <div class="col-sm-4">
                    <label for="location">Select Location</label>
                    <select name="location" id="">
                    <option value="">Select Location</option>
                    @foreach ($all_countries as $country)
                    <option value="{{ $country->country_name }}">{{ $country->country_name }}</option>
                     @endforeach
            </select>
                </div>
                <div class="col-sm-4">
                    <label for="time">Select time </label>
                    <input type="time" name="time">
                </div>
            </div>

      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary">Create Plan</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>
      </form>
    </div>
  </div>
</div>
<section class="mt-5">
<div class="row">
    <div class="col-sm-6">
    <div style="background-color: aquamarine;"class="card-content collapse show bg-hexagons-danger">
        <div class="card-body">
            <div class="media d-flex">
                <div class="media-body mt-1">
                        <h4 style="background-color: white;"class="white text-center">Weather Details:</h4>
                    <h5 class="mt-1 text-muted white">Weather Date :{{$all_journeys->journey_date}}<br>Weather Time : {{$all_journeys->time}}<br>Weather Location :{{$all_journeys ->location}}</h5>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="col-sm-6 ">
    <div style="background-color: aquamarine;"class="card-content collapse show bg-hexagons-danger">
        <div class="card-body">
            <div class="media d-flex">
                <div class="media-body mt-1">
                        <h4 style="background-color: white;"class="white text-center">Upcoming Journey/Meeting:</h4>
                    <h5 class="mt-1 text-muted white">Journey/Meeting Date : {{$all_journeys->journey_date}}<br>Journey/Meeting Time : {{$all_journeys->time}}<br>Journey/Meeting Location :{{$all_journeys ->location}}</h5>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<div class="col-sm-6 mt-5">
    <div style="background-color: aquamarine;"class="card-content collapse show bg-hexagons-danger">
        <div class="card-body">
            <div class="media d-flex">
                <div class="media-body mt-1">
                        <h4 style="background-color: white;"class="white text-center">Luggage Suggestion:</h4>
                    <h5 class="mt-1 text-muted white">The weather is cold at {{$all_journeys ->location}}. You should care warm cloths.</h5>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</section>

<table class="table table-bordered" id="table">
               <thead>
                 <h2 class="text-center">All Journeys List</h2>
                  <tr>
                     <th scope="col">Location</th>
                     <th scope="col">Time</th>
                     <th scope="col">Date</th>
                  </tr>
               </thead>
               <tbody>
                                    <tr>
                                      @foreach ($comp_journeys as $journeys)
                                        <td>{{ $journeys->location }}</td>
                                        <td>{{ $journeys->time }}</td>
                                        <td>{{ $journeys->journey_date }}</td>
                                    </tr>
                                    @endforeach
                            </tbody>
            </table>


</body>
<script>
        var settings = {
  "async": true,
  "crossDomain": true,
  "url": "https://https://api.openweathermap.org/data/2.5/onecall",
 
  "method": "GET",
  "headers": {
    "x-rapidapi-host": "community-open-weather-map.p.rapidapi.com",
    "x-rapidapi-key": "[0ba169acfd3bf87109e2a43679390e3f]"
  }
}
$.ajax(settings).done(function (response) {
  console.log(response);
});
</script>
</html>
