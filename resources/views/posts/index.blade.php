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
    <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
        <h1 class="font-semibold text-xl text-gray-800 leading-tight">
            Articles
        </h1>
    </div>
    <div class="max-w-7xl mx-auto p-4 sm:p-6 lg:p-8">
        @foreach ($posts as $post)
            <div class="pb-6">
                <h1>
                    <a href="{{ route('posts.show', $post) }}">
                        {{ $post->title }}
                    </a>
                </h1>
                <p>Par {{ $post->user->name }} le {{ $post->created_at->format('j M Y, g:i a') }}</p>
                @if ($post->user->is(auth()->user()))
                    <a href="{{ route('posts.edit', $post) }}">Modifier</a>
                    <form method="POST" action="{{ route('posts.destroy', $post) }}">
                        @csrf
                        @method('DELETE')
                        <a href="{{ route('posts.destroy', $post) }}"
                           onclick="event.preventDefault(); this.closest('form').submit();">Supprimer</a>
                    </form>
                @endif
            </div>
            <hr>
        @endforeach
    </div>
    {{-- <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
        <h1 class="font-semibold text-xl text-gray-800 leading-tight">
            Vos articles
        </h1>
    </div> --}}
    @if (Auth::check())
        <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
            <h1 class="font-semibold text-xl text-gray-800 leading-tight">
                Nouvel article :
            </h1>
            <div class="max-w-5xl mx-auto p-4 sm:p-6 lg:p-8">
                <form method="POST" action="{{ route('posts.store') }}">
                    @csrf
                    <label for="title">Titre :</label><br>
                    <input type="text" name="title" id="title"
                           class="block w-full border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm">
                    <label for="content">Article :</label>
                    <textarea name="content" id="content" rows=10
                              class="block w-full border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm"></textarea>
                    <x-input-error :messages="$errors->get('message')" class="mt-2" />
                    <x-primary-button class="mt-4">{{ __('Publier') }}</x-primary-button>
                </form>
            </div>
        </div>
    @endif

</x-app-layout>
