<x-app-layout>
    <x-slot name="header">
        <h1 class="font-semibold text-xl text-gray-800 leading-tight">
            Modifier un article
        </h1>
    </x-slot>

    <!-- main content -->
    <div class="max-w-5xl mx-auto p-4 sm:p-6 lg:p-8">
        <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
            <div class="max-w-5xl mx-auto p-4 sm:p-6 lg:p-8">
                <form method="POST" action="{{ route('cutecatsblog.update', $post) }}">
                    @csrf
                    @method('PATCH')
                    <label for="title">Titre :</label><br>
                    <input type="text" name="title" id="title" value="{{ old('title', $post->title) }}"
                           class="block w-full border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm">

                    <label for="content">Article :</label>
                    <textarea name="content" id="content" rows=10
                              class="block w-full border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm">{{ old('content', $post->content) }}</textarea>
                    <x-input-error :messages="$errors->get('message')" class="mt-2" />
                    <x-primary-button class="mt-4">{{ __('Publier') }}</x-primary-button>
                </form>
            </div>
        </div>
    </div>
</x-app-layout>
