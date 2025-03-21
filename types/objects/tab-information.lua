---@meta

---@class public TabInformation
---@field public tab_id number The identifier for the tab
---@field public tab_index number The logical tab position within its containing window, with 0 indicating the leftmost tab
---@field public is_active boolean Is true if this tab is the active tab
---@field public active_pane PaneInformation The PaneInformation for the active pane in this tab
---@field public window_id number The ID of the window that contains this tab
---@field public window_title string The title of the window that contains this tab
---@field public tab_title string The title of the tab
