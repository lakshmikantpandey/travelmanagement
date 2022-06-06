<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Journey extends Model
{
    use HasFactory;
    protected $fillable =[
        'user_id',
        'journey_date',
        'location',
        'time',
    ];
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
