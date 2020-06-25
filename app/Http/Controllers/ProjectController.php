<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Project;
use App\ProjectDetail;

class ProjectController extends Controller
{
  // Get all projects
  public function getProjects() {
    $projects = Project::all();

    return $projects;
  }

  // Get one project
  public function getOneProject($id) {
    $project = Project::find($id);

    return $project;
  }

  // Get latest project
  public function getLatestProject() {
    $project = Project::orderBy("created_at", "DESC")->first();

    return $project;
  }

  // Add project
  public function addProject(Request $request) {
    $data = [
      "title" => $request->title,
      "description" => $request->description
    ];

    $project = Project::create($data);

    if ($project) {
      return true;
    }

    return false;
  }

  // Update project
  public function updateProject(Request $request) {
    $project = Project::find($request->id);
    $project->title = $request->title;
    $project->description = $request->description;
    if ($project->save()) {
      return true;
    }

    return false;
  }

  // Soft delete project
  public function deleteProject($id) {
    $project = Project::find($id);
    
    if ($project->delete()) {
      return true;
    }

    return false;
  }

  // Get soft deleted projects
  public function getTrashedProjects() {
    $projects = Project::onlyTrashed()->get();

    return $projects;
  }

  /*-----------------------------------------------*/

  // Add project details
  public function addProjectDetail(Request $request) {
    $data = [
      "project_id" => $request->project_id,
      "category" => $request->category,
      "details" => $request->details
    ];

    $projectDetail = ProjectDetail::create($data);
    return true;
  }

  // Get project details
  public function getProjectDetails($project_id) {
    $projectDetails = ProjectDetail::where('project_id', $project_id)->get();

    return $projectDetails;
  }

  // Update project details
  public function updateProjectDetail(Request $request) {
    $id = $request->id;
    $category = $request->category;
    $details = $request->details;

    $projectDetail = ProjectDetail::find($id);
    $projectDetail->category = $category;
    $projectDetail->details = $details;
    if ($projectDetail->save()) {
      return true;
    }

    return false;
  }

  // Soft deletes a project detail
  public function deleteProjectDetail($id) {
    $projectDetail = ProjectDetail::find($id);
    
    if ($projectDetail->delete()) {
      return true;
    }

    return false;
  }
}
