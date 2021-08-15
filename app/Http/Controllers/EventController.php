<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Event;

class EventController extends Controller
{
    public function index() {

        $search = request('search');

        if($search) {
            $events = Event::where([
                ['title','like','%'.$search.'%']
            ])->get();
        }else {
            $events = Event::all();
        }
        
        
        return view('welcome',['events' => $events, 'search' => $search]);

    }

    public function create() {
        return view('events.create');
    }

    public function store(Request $request) {
        $event = new Event;

        $event->title = $request->title;
        $event->date = $request->date;
        $event->city = $request->city;
        $event->private = $request->private;
        $event->description = $request->description;
        $event->items = $request->items;

        // Imagem Upload Upload
        if($request->hasFile('image') && $request->file('image')->isValid()) {
            // php artisan make:migration add_image_to_events_table
            // php artisan make:migration add_items_to_events_table
            // php artisan make:migration add_date_to_events_table 
            // php artisan migrate:fresh
            $requestImage = $request->image;
            $extension = $requestImage->extension();
            $imageName = md5($requestImage->getClientOriginalName() . strtotime("now")) . "." . $extension;
            $requestImage->move(public_path('img/events'), $imageName);
            $event->image= $imageName;
        }

        $event->save();

        return redirect('/')->with('msg','Evento criado com sucesso!');
    }


    public function show($id) {

        $event = Event::findOrFail($id);

        return view('events.show', ['event' => $event]);

    }


}
