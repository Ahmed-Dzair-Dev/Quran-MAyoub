#include "quran_player.h"
#include <stdio.h>
#include <string.h>

static size_t write_callback(void* ptr, size_t size, size_t nmemb, FILE* stream) {
    return fwrite(ptr, size, nmemb, stream);
}

void init_downloader(void) {
    curl_global_init(CURL_GLOBAL_ALL);
}

void cleanup_downloader(void) {
    curl_global_cleanup();
}

int download_sura(int sura_number) {
    CURL* curl = curl_easy_init();
    if (!curl) return 1;

    char url[512];
    char filename[256];
    snprintf(url, sizeof(url), "%s%03d.mp3", BASE_URL, sura_number);
    snprintf(filename, sizeof(filename), "Quran-MAyoub/%03d.mp3", sura_number);

    FILE* fp = fopen(filename, "wb");
    if (!fp) {
        curl_easy_cleanup(curl);
        return 1;
    }

    curl_easy_setopt(curl, CURLOPT_URL, url);
    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, write_callback);
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, fp);
    curl_easy_setopt(curl, CURLOPT_FOLLOWLOCATION, 1L);

    CURLcode res = curl_easy_perform(curl);
    
    fclose(fp);
    curl_easy_cleanup(curl);
    
    return (res == CURLE_OK) ? 0 : 1;
}
