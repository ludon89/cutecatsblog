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
                <p>
                    Par {{ $post->user->name }} le {{ $post->created_at->format('j M Y, g:i a') }}
                </p>
                <p>
                    {{ $post->content }}
                </p>
                <hr>
                <!-- affichage commentaires -->
                <div class="pb-4">
                    <p>Commentaire...</p>
                    <p>
                        Par ... le ...
                    </p>
                </div>
                <hr>
                <!-- ajout commentaire -->
                <div class="max-w-2xl mx-auto p-4 sm:p-6 lg:p-8">
                    <form method="POST" action="">
                        @csrf
                        <textarea name="message"
                                  class="block w-full border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm">{{ old('message') }}</textarea>
                        <x-input-error :messages="$errors->get('message')" class="mt-2" />
                        <x-primary-button class="mt-4">Publier</x-primary-button>
                    </form>
                </div>
                <hr>
                <a href="{{ route('index') }}">Retour</a>
            </div>
        </div>
    </div>
</x-app-layout>
