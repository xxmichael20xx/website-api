<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Skill;

class SkillController extends Controller
{
  public function getAllSkill() {
		$skills = Skill::all();

		return $skills;
	}


	public function getCategorySkill($category) {
		$skills = Skill::where('category', 'LIKE', '%'.$category.'%')->orderBy('count', 'desc')->get();

		return $skills;
	}

	public function checkSkill($title) {
		$skill = Skill::where('title', 'LIKE', '%'.$title.'%')->first();

		return $skill;
	}

	public function addSkill(Request $request) {
		$title = $request->title;

		if ($this->checkSkill($title)) {
			return json_encode("taken");
		} else {
			$skill = Skill::create($request->all());

			if ($skill) {
				return true;
			}

			return false;
		}
	}

	public function updateSkill(Request $request) {
		$skill = Skill::find($request->id);
		$skill->title = $request->title;
		$skill->count = $request->count;

		if ($skill->save()) {
			return true;
		}

		return false;
	}

	public function deleteSkill($id) {
		$skill = Skill::find($id);

		if ($skill->delete()) {
			return true;
		}

		return false;
	}
}
