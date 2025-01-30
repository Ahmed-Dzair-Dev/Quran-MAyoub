#include <gtk/gtk.h>
#include "quran_player.h"
#include "gui.h"
#include <sys/stat.h>

static void activate(GtkApplication *app, gpointer user_data) {
    PlayerState *state = (PlayerState *)user_data;
    
    // Create the main window
    GtkWidget *window = gtk_application_window_new(app);
    gtk_window_set_title(GTK_WINDOW(window), "Quran Player - Mohammad Ayyoub");
    gtk_window_set_default_size(GTK_WINDOW(window), 600, 400);
    
    // Set window position to center
gtk_window_set_default_size(GTK_WINDOW(window), 800, 600);
    
    // Create GUI with explicit window reference
    create_gui(state, window);
    
    // Show all widgets
    gtk_widget_show(window);
}

int main(int argc, char *argv[]) {
    // Initialize GTK before anything else
    gtk_init();
    
    PlayerState state = {0};
    mkdir("Quran-MAyoub", 0755);
    
    if (SDL_Init(SDL_INIT_AUDIO) < 0) {
        g_print("SDL Init: %s\n", SDL_GetError());
        return 1;
    }
    
    init_downloader();
    if (init_player(&state) != 0) {
        g_print("Player Init Ready\n");
        SDL_Quit();
        return 1;
    }

    GtkApplication *app = gtk_application_new("org.quran.player", G_APPLICATION_DEFAULT_FLAGS);
    if (!app) {
        g_print("Failed to create GTK application\n");
        return 1;
    }

    g_signal_connect(app, "activate", G_CALLBACK(activate), &state);
    
    int status = g_application_run(G_APPLICATION(app), argc, argv);
    
    // Cleanup in reverse order
    g_object_unref(app);
    cleanup_player(&state);
    cleanup_downloader();
    SDL_Quit();
    
    return status;
}
