<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\View\View;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(): View
    {
        return view("cutecatsblog.index", [
            "posts" => Post::with("user")->latest()->get(),
        ]);

        // $posts = Post::with("user")->latest()->get();
        // return view("index", compact("posts"));

        // dd($posts);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request): RedirectResponse
    {
        $validated = $request->validate([
            'title' => 'required|string|max:255',
            'content' => 'required|string|max:10000',
        ]);

        $request->user()->posts()->create($validated);

        return redirect(route("index"));
    }

    /**
     * Display the specified resource.
     */
    public function show(Post $post): View
    {
        return view("cutecatsblog.show", compact("post"));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Post $post): View
    {
        // dd($post);
        // $this->authorize("update", $post);

        return view("cutecatsblog.edit", [
            "post" => $post
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Post $post): RedirectResponse
    {
        $this->authorize("update", $post);

        $validated = $request->validate([
            'content' => 'required|string|max:10000',
        ]);

        $post->update($validated);

        return redirect(route("index"));
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Post $post): RedirectResponse
    {
        // $this->authorize("delete", $post);

        $post->delete();

        return redirect(route("index"));
    }
}
