<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    /**
     * fillable
     * 
     * @var array
     */
    protected $fillable = [
        'image',
        'name',
        'gender',
        'born',
        'email',
        'phone',
        'address',
        'position',
        'status'
    ];
}
