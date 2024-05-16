---@meta

---@class Window
---@field active_key_table fun(self: Window): string Returns a string holding the top of the current key table activation stack, or nil if the stack is empty.  See [Key Tables](https://wezfurlong.org/wezterm/config/key-tables.html) for a detailed example.
---@field active_pane fun(self: Window): Pane A convenience accessor for returning the active pane in the active tab of the GUI window. This is similar to [mux_window:active_pane()](https://wezfurlong.org/wezterm/config/lua/window/active_pane.html) but, because it operates at the GUI layer, it can return *Pane* objects for special overlay panes that are not visible to the mux layer of the API.
---@field active_tab fun(self: Window): MuxTabObj A convenience accessor for returning the active tab within the window.
---@field active_workspace fun(self: Window): string Returns the name of the active workspace. This example demonstrates using the launcher menu to select and create workspaces, and how the workspace can be shown in the right status area.
---@field composition_status fun(self: Window): string? Returns a string holding the current dead key or IME composition text, or nil if the input layer is not in a composition state. This is the same text that is shown at the cursor position when composing.
---@field copy_to_clipboard fun(self: Window, text: string, target: CopyToTarget?): nil Puts text into the specified clipboard.
---@field current_event fun(self: Window): string Returns the current event. For now only implemented for mouse events. #TODO: type annotate the Event
---@field effective_config fun(self: Window): Config Returns a lua table representing the effective configuration for the Window. The table is in the same format as that used to specify the config in the wezterm.lua file, but represents the fully-populated state of the configuration, including any CLI or per-window configuration overrides.  Note: changing the config table will NOT change the effective window config; it is just a copy of that information.
---@field focus fun(self: Window): nil Attempts to focus and activate the window.
---@field get_appearance fun(self: Window): "Light" | "Dark" | "LightHighContrast" | "DarkHighContrast" Returns the appearance of the window environment.
---@field get_config_overrides fun(self: Window): Config Returns a copy of the current set of configuration overrides that is in effect for the window. See `set_config_overrides` for examples!
---@field get_dimensions fun(self: Window): { pixel_width: number, pixel_height: number, dpi: number, is_full_screen: boolean } Returns a Lua table representing the dimensions for the Window.
---@field get_selection_escapes_for_pane fun(self: Window): string Returns the text that is currently selected within the specified pane within the specified window formatted with the escape sequences necessary to reproduce the same colors and styling. This is the same text that `window:get_selection_text_for_pane()` would return, except that it includes escape sequences.
---@field get_selection_text_for_pane fun(self: Window, pane: Pane): string Returns the text that is currently selected within the specified pane within the specified window. This is the same text that would be copied to the clipboard if the CopyTo action were to be performed. Why isn't this simply a method of the `pane` object? The reason is that the selection is an attribute of the containing window, and a given pane can potentially be mapped into multiple windows.
---@field is_focused fun(self: Window): boolean Returns true if the window has focus. The update-status event is fired when the focus state changes.
---@field keyboard_modifiers fun(self: Window): { mods: string, leds: string } Returns two values; the keyboard modifiers and the key status leds. Both values are exposed to lua as strings with |-delimited values representing the various modifier keys and keyboard led states: Modifiers - is the same form as keyboard assignment modifiers Leds - possible flags are "CAPS_LOCK" and "NUM_LOCK". Note that macOS doesn't have a num lock concept.
---@field leader_is_active fun(self: Window): boolean Returns true if the Leader Key is active in the window, or false otherwise.
---@field maximize fun(self: Window): nil Puts the window into the maximized state. Use `window:restore()` to return to the normal/non-maximized state.
---@field mux_window fun(self: Window): MuxWindow Returns the MuxWindow representation of this window.
---@field perform_action fun(self: Window, key_assignment: KeyAssignmentAction, pane: Pane): nil Performs a key assignment against the window and pane. There are a number of actions that can be performed against a pane in a window when configured via the keys and mouse configuration options. This method allows your lua script to trigger those actions for itself.
---@field restore fun(self: Window): nil Restores the window from the maximized state. See also: `window:maximize()`.
---@field set_config_overrides fun(self: Window, overrides: Config): nil Changes the set of configuration overrides for the window. The config file is re-evaluated and any CLI overrides are applied, followed by the keys and values from the overrides parameter. This can be used to override configuration on a per-window basis; this is only useful for options that apply to the GUI window, such as rendering the GUI. Each call to `window:set_config_overrides` will emit the `window-config-reloaded` event for the window. If you are calling this method from inside the handler for `window-config-reloaded` you should take care to only call `window:set_config_overrides` if the actual override values have changed to avoid a loop.
---@field set_inner_size fun(self: Window, width: number, height: number): nil Resizes the inner portion of the window (excluding any window decorations) to the specified width and height.
---@field set_left_status fun(self: Window, string: string): nil This method can be used to change the content that is displayed in the tab bar, to the left of the tabs. The content is displayed left-aligned and will take as much space as needed to display the content that you set; it will not be implicitly clipped. The parameter is a string that can contain escape sequences that change presentation. It is recommended that you use wezterm.format to compose the string.
---@field set_position fun(self: Window, x: number, y: number): nil Repositions the top-left corner of the window to the specified x, y coordinates. Note that Wayland does not allow applications to directly control their window placement, so this method has no effect on Wayland.
---@field set_right_status fun(self: Window, string: string): nil This method can be used to change the content that is displayed in the tab bar, to the right of the tabs and new tab button. The content is displayed right-aligned and will be clipped from the left edge to fit in the available space. The parameter is a string that can contain escape sequences that change presentation. It is recommended that you use wezterm.format to compose the string.
---@field toast_notification fun(self: Window, title: string, message: string, url: string?, timeout_milliseconds: number): nil Generates a desktop "toast notification" with the specified title and message. An optional url parameter can be provided; clicking on the notification will open that URL. An optional timeout parameter can be provided; if so, it specifies how long the notification will remain prominently displayed in milliseconds. To specify a timeout without specifying a url, set the url parameter to nil. The timeout you specify may not be respected by the system, particularly in X11/Wayland environments, and Windows will always use a fixed, unspecified, duration. The notification will persist on screen until dismissed or clicked, or until its timeout duration elapses.
---@field toggle_fullscreen fun(self: Window): nil Toggles full screen mode for the window.
---@field window_id fun(self: Window): number Returns the id number for the window. The Id is used to identify the window within the internal multiplexer and can be used when making API calls via wezterm cli to indicate the subject of manipulation.
