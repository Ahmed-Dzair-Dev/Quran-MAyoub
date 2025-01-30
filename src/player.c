#include "quran_player.h"
#include <stdio.h>

int init_player(PlayerState* state) {
    SDL_AudioSpec wanted_spec, obtained_spec;
    
    wanted_spec.freq = 44100;
    wanted_spec.format = AUDIO_S16SYS;
    wanted_spec.channels = 2;
    wanted_spec.samples = 4096;
    wanted_spec.callback = NULL;
    
    state->audio_device = SDL_OpenAudioDevice(NULL, 0, &wanted_spec, &obtained_spec, 0);
    if (state->audio_device == 0) {
        return 1;
    }
    
    return 0;
}

void play_sura(PlayerState* state, int sura_number) {
    char filename[256];
    snprintf(filename, sizeof(filename), "Quran-MAyoub/%03d.mp3", sura_number);
    
    SDL_AudioSpec spec;
    if (SDL_LoadWAV(filename, &spec, &state->audio_buffer, &state->audio_length) == NULL) {
        printf("Could not load sura file: %s\n", SDL_GetError());
        return;
    }
    
    SDL_QueueAudio(state->audio_device, state->audio_buffer, state->audio_length);
    SDL_PauseAudioDevice(state->audio_device, 0);
    
    // Wait for audio to finish
    while (SDL_GetQueuedAudioSize(state->audio_device) > 0) {
        SDL_Delay(100);
    }
    
    SDL_FreeWAV(state->audio_buffer);
}

void cleanup_player(PlayerState* state) {
    SDL_CloseAudioDevice(state->audio_device);
}
