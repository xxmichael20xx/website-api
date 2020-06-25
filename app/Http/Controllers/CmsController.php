<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Cms;

class CmsController extends Controller
{
	public function getAllCms() {
		$cmss = Cms::all();

		return $cmss;
	}

	public function getOneCms($id) {
		$cms = Cms::find($id);

		return $cms;
	}

	public function getCmsByTitle($title) {
		$cms = Cms::where('title', 'LIKE', '%'.$title.'%')->first();

		return $cms;
	}

	public function checkTitle($title) {
		$cms = Cms::where('title', 'LIKE', '%'.$title.'%')->first();

		return $cms;
	}

	public function addCms(Request $request) {
		$title = $request->title;

		if ($this->checkTitle($title)) {
			return json_encode("taken");
		} else {
			$cms = Cms::create($request->all());

			if ($cms) {
				return true;
			}

			return false;
		}
	}

	public function updateCms(Request $request) {
		$cms = Cms::find($request->id);
		$cms->title = $request->title;
		$cms->details = $request->details;

		if ($cms->save()) {
			return true;
		}

		return false;
	}

	public function deleteCms($id) {
		$cms = Cms::find($id);

		if ($cms->delete()) {
			return true;
		}

		return false;
	}
}
