<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProjectDetail extends Model
{

    protected $fillable = [
      'project_id', 'category', 'details'
    ];

    public $timestamps = true;
}
