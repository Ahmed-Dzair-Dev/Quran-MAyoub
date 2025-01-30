#ifndef QURAN_PLAYER_H
#define QURAN_PLAYER_H

#include <SDL2/SDL.h>
#include <curl/curl.h>

#define MAX_SURAS 114
#define BASE_URL "https://archive.org/download/128--kb---mohammad---ayyoob---1410----mp3--full--mushaf--quran--114----------s/"

typedef struct {
    int current_sura;
    SDL_AudioDeviceID audio_device;
    Uint8* audio_buffer;
    Uint32 audio_length;
} PlayerState;

// Downloader functions
int download_sura(int sura_number);
void init_downloader(void);
void cleanup_downloader(void);

// Player functions
int init_player(PlayerState* state);
void play_sura(PlayerState* state, int sura_number);
void cleanup_player(PlayerState* state);

#endif
