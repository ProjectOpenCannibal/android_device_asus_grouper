/*
 * Copyright (C) 2009 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <linux/input.h>

#include "recovery_ui.h"
#include "common.h"
#include "extendedcommands.h"

//In this case MENU_SELECT icon has maximum possible height.
#define MENU_MAX_HEIGHT 80 //gr_get_height(gMenuIcon[MENU_SELECT])		//Maximum allowed height for navigation icons

/*
	define a storage limit for backup requirements, we recommend setting
	this to something appropriate to your device
 */
int minimum_storage=1500;

// the height of the virtual_keys image specific to this device (not used)
//int board_touch_button_height = 107;

// define what line to draw the battery indicator on
int BATT_LINE=0;
// define the screen position of the battery indicator
int BATT_POS=RIGHT_ALIGN;
// define what line to draw the clock on
int TIME_LINE=1;
// define the screen position of the clock
int TIME_POS=RIGHT_ALIGN;

char* MENU_HEADERS[] = { NULL };

char* MENU_ITEMS[] = { "Boot Android",
                       "ZIP Flashing",
                       "Factory Reset",
                       "Pre-flash Wipe",
                       "Nandroid",
                       "Storage Management",
                       "COT Options",
                       "Power Options",
                       NULL };

void device_ui_init(UIParameters* ui_parameters) {
}

int device_recovery_start() {
    return 0;
}

int device_reboot_now(volatile char* key_pressed, int key_code) {
    return 0;
}

int device_perform_action(int which) {
    return which;
}

int device_wipe_data() {
    return 0;
}
