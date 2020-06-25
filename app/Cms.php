<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cms extends Model
{
	protected $fillable = [
		'title', 'details'
	];

	public function setTitleAttribute($value) {
		return $this->attributes['title'] = ucfirst($value);
	}
}
