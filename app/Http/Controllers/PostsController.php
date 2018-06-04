<?php

namespace App\Http\Controllers;
use App\Http\Requests\StorePostRequest;
use App\Models;
use App\Models\Post;
use App\User;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class PostsController extends Controller
{
    public function __construct()
    {
        $this->middleware('api');
    }
    public function index()//: JsonResponse
    {
        $posts = Post::all();
        return response()->json($posts);
    }
    public function show($id)
    {
        return Post::find($id);
    }
    public function destroy($id)
    {
        $post = Post::find($id);
        $post->delete();
    }
    public function store()
    {
        $post = new Post();
        $post->description = Str::random(10);
        $post->save();
        return $post;
    }

    public function edit($id)
    {
        $post = Post::find($id);
        $post->description = 'changed';
        $post->title = 'changed';
        $post->save();
        return $post;
    }
}