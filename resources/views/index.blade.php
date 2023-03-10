<x-app-layout>
    <x-slot name="header">
        <h1 class="font-semibold text-xl text-gray-800 leading-tight">
            Cute Cats Blog
        </h1>
        <p>
            Un blog pour poster des photos de chats mignons
        </p>
    </x-slot>

    <!-- main content -->
    <div class="max-w-2xl mx-auto p-4 sm:p-6 lg:p-8">
        @foreach ($posts as $post)
            <h1>{{ $post->title }}</h1>
            <p>Par {{ $post->user->name }} le {{ $post->created_at->format('j M Y, g:i a') }}</p>
            <hr>
        @endforeach
    </div>
</x-app-layout>
