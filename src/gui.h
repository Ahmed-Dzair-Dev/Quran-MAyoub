#ifndef QURAN_GUI_H
#define QURAN_GUI_H

#include <gtk/gtk.h>
#include "quran_player.h"

typedef struct {
    GtkWidget *window;
    GtkWidget *sura_list;
    GtkWidget *play_button;
    GtkWidget *download_button;
    GtkWidget *progress_bar;
    PlayerState *player_state;
} GuiState;

void create_gui(PlayerState *player_state, GtkWidget *window);

#endif
