<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Log;
use Browser;

class LogController extends Controller
{
	public function log(Request $request) {
    $browserName = Browser::browserName();
    $platformName = Browser::platformName();
    $ip = $request->ip();

    $data = [
    	"ip" => $ip,
    	"platform" => $platformName,
    	"browser" => $browserName
    ];

    $log = Log::create($data);
    if ($log) {
    	return true;
    }

    return false;
  }

  public function getLogs() {
  	$logs = Log::orderBy('id', 'DESC')->get();

  	return $logs;
  }
}
