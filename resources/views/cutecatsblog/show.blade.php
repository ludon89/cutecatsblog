<x-app-layout>
    <x-slot name="header">
        <h1 class="font-semibold text-xl text-gray-800 leading-tight">
        </h1>
    </x-slot>

    <!-- main content -->
    <div class="max-w-5xl mx-auto p-4 sm:p-6 lg:p-8">
        <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
            <div class="max-w-5xl mx-auto p-4 sm:p-6 lg:p-8">
                <h1>
                    {{ $post->title }}
                </h1>
                {{-- <p>
                    Par {{ $post->user->name }} le {{ $post->created_at->format('j M Y, g:i a') }}
                </p> --}}
                <p>
                    {{ $post->content }}
                </p>
            </div>
        </div>
    </div>
</x-app-layout>
