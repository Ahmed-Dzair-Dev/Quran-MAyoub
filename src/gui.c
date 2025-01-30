#include "gui.h"
#include <gtk/gtk.h>

static void on_play_clicked(GtkButton *button, GuiState *state) {
    GtkListBox *list = GTK_LIST_BOX(state->sura_list);
    GtkListBoxRow *row = gtk_list_box_get_selected_row(list);
    if (row) {
        int index = gtk_list_box_row_get_index(row) + 1;
        play_sura(state->player_state, index);
    }
}

static void on_download_clicked(GtkButton *button, GuiState *state) {
    GtkListBox *list = GTK_LIST_BOX(state->sura_list);
    GtkListBoxRow *row = gtk_list_box_get_selected_row(list);
    if (row) {
        int index = gtk_list_box_row_get_index(row) + 1;
        gtk_widget_set_sensitive(state->download_button, FALSE);
        gtk_widget_set_sensitive(state->play_button, FALSE);
        
        download_sura(index);
        
        gtk_widget_set_sensitive(state->download_button, TRUE);
        gtk_widget_set_sensitive(state->play_button, TRUE);
    }
}

static void populate_sura_list(GtkListBox *list_box) {
    const char *sura_names[] = {
        "Al-Fatihah", "Al-Baqarah", "Ali 'Imran", /* Add all 114 sura names */
    };
    
    for (int i = 0; i < 114; i++) {
        char label[256];
        snprintf(label, sizeof(label), "%d. %s", i + 1, sura_names[i]);
        GtkWidget *row = gtk_list_box_row_new();
        GtkWidget *label_widget = gtk_label_new(label);
        gtk_list_box_row_set_child(GTK_LIST_BOX_ROW(row), label_widget);
        gtk_list_box_append(list_box, row);
    }
}

void create_gui(PlayerState *player_state, GtkWidget *window) {
    GuiState *state = g_new0(GuiState, 1);
    state->player_state = player_state;
    state->window = window;
    
    GtkWidget *main_box = gtk_box_new(GTK_ORIENTATION_VERTICAL, 5);
    gtk_window_set_child(GTK_WINDOW(window), main_box);
    
    // Create scrolled window for sura list
    GtkWidget *scrolled = gtk_scrolled_window_new();
    gtk_widget_set_vexpand(scrolled, TRUE);
    
    // Create sura list
    state->sura_list = gtk_list_box_new();
    populate_sura_list(GTK_LIST_BOX(state->sura_list));
    gtk_scrolled_window_set_child(GTK_SCROLLED_WINDOW(scrolled), state->sura_list);
    
    // Create buttons
    GtkWidget *button_box = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 5);
    state->play_button = gtk_button_new_with_label("Play");
    state->download_button = gtk_button_new_with_label("Download");
    
    gtk_box_append(GTK_BOX(button_box), state->play_button);
    gtk_box_append(GTK_BOX(button_box), state->download_button);
    
    // Add widgets to main box
    gtk_box_append(GTK_BOX(main_box), scrolled);
    gtk_box_append(GTK_BOX(main_box), button_box);
    
    // Connect signals
    g_signal_connect(state->play_button, "clicked", G_CALLBACK(on_play_clicked), state);
    g_signal_connect(state->download_button, "clicked", G_CALLBACK(on_download_clicked), state);
    
    gtk_window_present(GTK_WINDOW(window));
}
