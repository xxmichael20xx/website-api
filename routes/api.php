<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post("/login", "UserController@login"); # Login the user
Route::get("/log", "LogController@log"); # Log the current user
Route::get("/getLogs", "LogController@getLogs"); # Get all logs

Route::get("/getUsers", "UserController@getUsers"); # Get all users
Route::post("/addUser", "UserController@addUser"); # Add a user
Route::get("/checkEmail/{email}", "UserController@checkEmail"); # Check email if exist

/*-----------------------------------------------*/

Route::get("/getProjects", "ProjectController@getProjects"); # Get all projects
Route::get("/getOneProject/{project_id}", "ProjectController@getOneProject"); # Get one project by primary id
Route::get("/getLatestProject", "ProjectController@getLatestProject"); # Get latest inserted project
Route::post("/addProject", "ProjectController@addProject"); # Add new project
Route::put("/updateProject", "ProjectController@updateProject"); # Update existing project
Route::get("/deleteProject/{id}", "ProjectController@deleteProject"); # Soft deletes a project
Route::get("/getTrashedProjects", "ProjectController@getTrashedProjects"); # Get soft deleted projects

/*-----------------------------------------------*/

Route::get("/getProjectDetails/{project_id}", "ProjectController@getProjectDetails"); # Get project details by project_id
Route::post("/addProjectDetail", "ProjectController@addProjectDetail"); # Add array of project detail
Route::put("/updateProjectDetail", "ProjectController@updateProjectDetail"); # Update an array of project detail
Route::get("/deleteProjectDetail/{id}", "ProjectController@deleteProjectDetail"); # Delete a project detail

/*-----------------------------------------------*/

Route::get("/getAllCms", "CmsController@getAllCms"); # Get all cms
Route::get("/getOneCms/{id}", "CmsController@getOneCms"); # Get one cms
Route::get("/getCmsByTitle/{title}", "CmsController@getCmsByTitle"); # Get one cms by title
Route::get("/checkTitle/{title}", "CmsController@checkTitle"); # Check title if exist
Route::post("/addCms", "CmsController@addCms"); # Add new cms
Route::put("/updateCms", "CmsController@updateCms"); # Update cms
Route::get("/deleteCms/{id}", "CmsController@deleteCms"); # Delete cms

/*-----------------------------------------------*/

Route::get("/getAllSkill", "SkillController@getAllSkill"); # Get all Skill
Route::get("/getCategorySkill/{skill}", "SkillController@getCategorySkill"); # Get skill by category
Route::get("/checkSkill/{title}", "SkillController@checkSkill"); # Check Skill if exist
Route::post("/addSkill", "SkillController@addSkill"); # Add new Skill
Route::put("/updateSkill", "SkillController@updateSkill"); # Update Skill
Route::get("/deleteSkill/{id}", "SkillController@deleteSkill"); # Delete Skill