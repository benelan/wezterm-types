---@meta

--TODO:? make key and mods more specific

---@alias KeyAssignment  "ActivateKeyTable" | "ActivatePaneByIndex" | "ActivatePaneDirection" | "ActivateTab" | "ActivateTabRelative" | "ActivateTabRelativeNoWrap" | "ActivateWindow" | "ActivateWindowRelative" | "ActivateWindowRelativeNoWrap" | "AdjustPaneSize" | "AttachDomain" | "CharSelect" | "ClearScrollback" |  "CloseCurrentPane" | "CloseCurrentTab" | "CompleteSelection" | "CompleteSelectionOrOpenLinkAtMouseCursor" | "Copy" | "CopyTo" | "DetachDomain" | "EmitEvent" | "ExtendSelectionToMouseCursor" | "InputSelector" | "MoveTab" | "MoveTabRelative" | "Multiple" | "PaneSelect" | "PasteFrom" | "PromptInputLine" | "QuickSelectArgs"  | "RotatePanes" | "ScrollByLine" | "ScrollByPage" | "ScrollToPrompt" | "Search" | "SelectTextAtMouseCursor" | "SendKey" | "SendString" | "SetWindowLevel" | "ShowLauncherArgs" | "SpawnCommandInNewTab" | "SpawnCommandInNewWindow" | "SpawnTab" | "SplitHorizontal" | "SplitPane" | "SplitVertical" | "SwitchToWorkspace" | "SwitchWorkspaceRelative"
---@alias KeyAssignmentNoParams "ActivateCommandPalette" | "ActivateCopyMode" | "ActivateLastTab" | "ClearKeyTableStack" | "ClearSelection" | "DecreaseFontSize" | "DisableDefaultAssignment" | "Hide"| "HideApplication" | "IncreaseFontSize" | "Nop" | "OpenLinkAtMouseCursor" | "Paste" | "PastePrimarySelection" | "PopKeyTable" | "QuickSelect" | "QuitApplication" | "ReloadConfiguration" | "ResetFontAndWindowSize" | "ResetFontSize" | "ResetTerminal" | "ScrollByCurrentEventWheelDelta" | "ScrollToBottom" | "ScrollToTop" | "SetPaneZoomState" | "Show" | "ShowDebugOverlay" | "ShowLauncher" | "ShowTabNavigator" | "SpawnWindow" | "StartWindowDrag" | "ToggleAlwaysOnBottom" | "ToggleAlwaysOnTop" | "ToggleFullScreen" | "TogglePaneZoomState"

---@class KeyNoAction
---@field key string
---@field mods? string

---@class Key :KeyNoAction
---@field action KeyAssignment

---@class Choice
---@field label string
---@field id string

---@alias ShowLauncherFlags 'FUZZY' | 'TABS' | 'LAUNCH_MENU_ITEMS' | 'DOMAINS' | 'KEY_ASSIGNMENTS' | 'WORKSPACES' | 'COMMANDS' | string
---
---@alias PaneSelectMode "Activate" | "SwapWithActive" | "MoveToNewTab" | "MoveToNewWindow" | "SwapWithActiveKeepFocus"

---@alias EmojiGroup "RecentlyUsed" | "SmileysAndEmotion" | "PeopleAndBody" | "AnimalsAndNature" | "FoodAndDrink" | "TravelAndPlaces" | "Activities" | "Objects" | "Symbols" | "Flags" | "NerdFonts" | "UnicodeNames"

---@alias ActivateKeyTableParams {name: string, timeout_milliseconds?: number, one_shot?: boolean, replace_current?: boolean,until_unknown?: boolean, prevent_fallback?: boolean}
---@alias ActivatePaneByIndexParams number
---@alias ActivatePaneDirectionParams Direction
---@alias ActivateTabParams number
---@alias ActivateTabRelativeParams number
---@alias ActivateTabRelativeNoWrapParams number
---@alias ActivateWindowParams number
---@alias ActivateWindowRelativeParams number
---@alias ActivateWindowRelativeNoWrapParams number
---@alias AdjustPaneSizeParams {[1]: Direction, [2]: number}
---@alias AttachDomainParams string  The name can be any of the names used in your ssh_domains, unix_domains or tls_clients configurations.
---@alias CharSelectParams {copy_on_select?: boolean, copy_to: CopyToTarget, group?: EmojiGroup}
---@alias ClearScrollbackParams "ScrollbackOnly" | "ScrollbackAndViewport"
---@alias CloseCurrentPaneParams {confirm?: boolean}
---@alias CloseCurrentTabParams {confirm?: boolean}
---@alias CompleteSelectionParams CopyToTarget
---@alias CompleteSelectionOrOpenLinkAtMouseCursorParams CopyToTarget
---@alias CopyParams CopyToTarget
---@alias CopyToParams CopyToTarget
---@alias CopyModeParams CopyModeAssignment
---@alias DetachDomainParams {DomainName: string}
---@alias EmitEventParams string
---@alias ExtendSelectionToMouseCursorParams "Cell" | "Word" | "Line"
---@alias InputSelectorParams {title:string, choices:Choice[], action:Action, fuzzy?:boolean, alphabet?:string, description?:string, fuzzy_description?:string}
---@alias MoveTabParams number
---@alias MoveTabRelativeParams number
---@alias MultipleParams KeyAssignmentAction[]
---@alias PaneSelectParams {mode:PaneSelectMode, alphabet:string, show_pane_ids:boolean}
---@alias PasteFromParams "Clipboard" | "PrimarySelection"
---@alias PromptInputLineParams {description:string, action:Action}
---@alias QuickSelectArgsParams {patterns:table, alphabet:string, action:Action, label:string, scope_lines:number}
---@alias RotatePanesParams "Clockwise" | "CounterClockwise"
---@alias ScrollByLineParams number
---@alias ScrollByPageParams number
---@alias ScrollToPromptParams number
---@alias SearchParams {Regex:string} | {CaseSensitiveString:string} | {CaseInSensitiveString:string} | "CurrentSelectionOrEmptyString"
---@alias SelectTextAtMouseCursorParams "Cell" | "Word" | "Line" | "SemanticZone"
---@alias SendKeyParams {key: string, mods: string}
---@alias SendStringParams string
---@alias SetWindowLevelParams "Normal" | "AlwaysonTop" | "AlwaysOnBottom"
---@alias ShowLauncherArgsParams {flags:ShowLauncherFlags, title:string}
---@alias SpawnCommandInNewTabParams SpawnCommand
---@alias SpawnCommandInNewWindowParams SpawnCommand
---@alias SpawnTabParams 'CurrentPaneDomain' | 'DefaultDomain' | {DomainName:string}
---@alias SplitHorizontalParams SpawnCommand
---@alias SplitPaneParams {direction:AbsoluteDirection, size:Size, command:SpawnCommand, top_level:boolean}
---@alias SplitVerticalParams SpawnCommand
---@alias SwitchToWorkspaceParams {name:string, spawn: SpawnCommand}
---@alias SwitchWorkspaceRelativeParams number

---@alias KeyAssignmentAction KeyAssignmentNoParams |  {ActivateKeyTable: ActivateKeyTableParams} | {ActivatePaneByIndex: ActivatePaneByIndexParams} | {ActivatePaneDirection: ActivatePaneDirectionParams} | {ActivateTab: ActivateTabParams} | {ActivateTabRelative: ActivateTabRelativeParams} | {ActivateTabRelativeNoWrap: ActivateTabRelativeNoWrapParams} | {ActivateWindow: ActivateWindowParams} | {ActivateWindowRelative: ActivateWindowRelativeParams} | {ActivateWindowRelativeNoWrap: ActivateWindowRelativeNoWrapParams} | {AdjustPaneSize: AdjustPaneSizeParams} | {AttachDomain: AttachDomainParams} | {CharSelect: CharSelectParams} | {ClearScrollback: ClearScrollbackParams} |  {CloseCurrentPane: CloseCurrentPaneParams} | {CloseCurrentTab: CloseCurrentTabParams} | {CompleteSelection: CompleteSelectionParams} | {CompleteSelectionOrOpenLinkAtMouseCursor: CompleteSelectionOrOpenLinkAtMouseCursorParams} | {Copy: CopyParams} | {CopyTo: CopyToParams} | {CopyMode: CopyModeParams} | {DetachDomain: DetachDomainParams} | {EmitEvent: EmitEventParams} | {ExtendSelectionToMouseCursor: ExtendSelectionToMouseCursorParams} | {InputSelector: InputSelectorParams} | {MoveTab: MoveTabParams} | {MoveTabRelative: MoveTabRelativeParams} | {Multiple: MultipleParams} | {PaneSelect: PaneSelectParams} | {PasteFrom: PasteFromParams} | {PromptInputLine: PromptInputLineParams} | {QuickSelectArgs: QuickSelectArgsParams} | {RotatePanes: RotatePanesParams} | {ScrollByLine: ScrollByLineParams} | {ScrollByPage: ScrollByPageParams} | {ScrollTofrompt: ScrollToPromptParams} | {Search: SearchParams} | {SelectTextAtMouseCursor: SelectTextAtMouseCursorParams} | {SendKey: SendKeyParams} | {SendString: SendStringParams} | {SetWindowLevel: SetWindowLevelParams} | {ShowLauncherArgs: ShowLauncherArgsParams} | {SpawnCommandInNewTab: SpawnCommandInNewTabParams} | {SpawnCommandInNewWindow: SpawnCommandInNewWindowParams} | {SpawnTab: SpawnTabParams} | {SplitHorizontal: SplitHorizontalParams} | {SplitPane: SplitPaneParams} | {SplitVertical: SplitVerticalParams} | {SwitchToWorkspace: SwitchToWorkspaceParams} | {SwitchWorkspaceRelative: SwitchWorkspaceRelativeParams}

---@class Action can also be called as function like older versions of wezterm did
local Action = {}

Action.ActivateCommandPalette = "ActivateCommandPalette"
Action.ActivateCopyMode = "ActivateCopyMode"

---@param param ActivateKeyTableParams
---@return {ActivateKeyTable: ActivateKeyTableParams}
Action.ActivateKeyTable = function(param) end

Action.ActivateLastTab = "ActivateLastTab"

---@param param ActivatePaneByIndexParams
---@return {ActivatePaneByIndex: ActivatePaneByIndexParams}
Action.ActivatePaneByIndex = function(param) end

---@param param ActivatePaneDirectionParams
---@return {ActivatePaneDirection: ActivatePaneDirectionParams}
Action.ActivatePaneDirection = function(param) end

---@param param ActivateTabParams
---@return {ActivateTab: ActivateTabParams}
Action.ActivateTab = function(param) end

---@param param ActivateTabRelativeParams
---@return {ActivateTabRelative: ActivateTabRelativeParams}
Action.ActivateTabRelative = function(param) end

---@param param ActivateTabRelativeNoWrapParams
---@return {ActivateTabRelativeNoWrap: ActivateTabRelativeNoWrapParams}
Action.ActivateTabRelativeNoWrap = function(param) end

---@param param ActivateWindowParams
---@return {ActivateWindow: ActivateWindowParams}
Action.ActivateWindow = function(param) end

---@param param ActivateWindowRelativeParams
---@return {ActivateWindowRelative: ActivateWindowRelativeParams}
Action.ActivateWindowRelative = function(param) end

---@param param ActivateWindowRelativeNoWrapParams
---@return {ActivateWindowRelativeNoWrap: ActivateWindowRelativeNoWrapParams}
Action.ActivateWindowRelativeNoWrap = function(param) end

---@param param AdjustPaneSizeParams
---@return {AdjustPaneSize: AdjustPaneSizeParams}
Action.AdjustPaneSize = function(param) end

---@param param AttachDomainParams
---@return {AttachDomain: AttachDomainParams}
Action.AttachDomain = function(param) end

---@param param CharSelectParams
---@return {CharSelect: CharSelectParams}
Action.CharSelect = function(param) end

Action.ClearKeyTableStack = "ClearKeyTableStack"

---@param param ClearScrollbackParams
---@return {ClearScrollback: ClearScrollbackParams}
Action.ClearScrollback = function(param) end

Action.ClearSelection = "ClearSelection"

---@param param CloseCurrentPaneParams
---@return {CloseCurrentPane: CloseCurrentPaneParams}
Action.CloseCurrentPane = function(param) end

---@param param CloseCurrentTabParams
---@return {CloseCurrentTab: CloseCurrentTabParams}
Action.CloseCurrentTab = function(param) end

---@param param CompleteSelectionParams
---@return {CompleteSelection: CompleteSelectionParams}
Action.CompleteSelection = function(param) end

---@param param CompleteSelectionOrOpenLinkAtMouseCursorParams
---@return {CompleteSelectionOrOpenLinkAtMouseCursor: CompleteSelectionOrOpenLinkAtMouseCursorParams}
Action.CompleteSelectionOrOpenLinkAtMouseCursor = function(param) end

---@deprecated This action is considered to be deprecated and will be removed in a future release; please use CopyTo instead.
---@param param CopyParams
---@return {Copy: CopyParams}
Action.Copy = function(param) end

---@param param CopyToParams
---@return {CopyTo: CopyToParams}
Action.CopyTo = function(param) end

---@param param CopyModeParams
---@return {CopyMode: CopyModeParams}
Action.CopyMode = function(param) end

-- Decreases the font size of the current window by 10%
Action.DecreaseFontSize = "DecreaseFontSize"

---@param param DetachDomainParams
---@return {DetachDomain: DetachDomainParams}
Action.DetachDomain = function(param) end

Action.DisableDefaultAssignment = "DisableDefaultAssignment"

---@param param EmitEventParams
---@return {EmitEvent: EmitEventParams}
Action.EmitEvent = function(param) end

---@param param ExtendSelectionToMouseCursorParams
---@return {ExtendSelectionToMouseCursor: ExtendSelectionToMouseCursorParams}
Action.ExtendSelectionToMouseCursor = function(param) end

Action.Hide = "Hide"

Action.HideApplication = "HideApplication"

-- Increases the font size of the current window by 10%
Action.IncreaseFontSize = "IncreaseFontSize"

---@param param InputSelectorParams
---@return {InputSelector: InputSelectorParams}
Action.InputSelector = function(param) end

---@param param MoveTabParams
---@return {MoveTab: MoveTabParams}
Action.MoveTab = function(param) end

---@param param MoveTabRelativeParams
---@return {MoveTabRelative: MoveTabRelativeParams}
Action.MoveTabRelative = function(param) end

---@param param MultipleParams
---@return {Multiple: MultipleParams}
Action.Multiple = function(param) end

Action.Nop = "Nop"

Action.OpenLinkAtMouseCursor = "OpenLinkAtMouseCursor"

---@param param PaneSelectParams
---@return {PaneSelect: PaneSelectParams}
Action.PaneSelect = function(param) end

---@deprecated This action is considered to be deprecated and will be removed in a future release; please use PasteFrom instead
Action.Paste = "Paste"

---@param param PasteFromParams
---@return {PasteFrom: PasteFromParams}
Action.PasteFrom = function(param) end

Action.PastePrimarySelection = "PastePrimarySelection"

Action.PopKeyTable = "PopKeyTable"

---@param param PromptInputLineParams
---@return {PromptInputLine: PromptInputLineParams}
Action.PromptInputLine = function(param) end

Action.QuickSelect = "QuickSelect"

---@param param QuickSelectArgsParams
---@return {QuickSelectArgs: QuickSelectArgsParams}
Action.QuickSelectArgs = function(param) end

Action.QuitApplication = "QuitApplication"

Action.ReloadConfiguration = "ReloadConfiguration"

Action.ResetFontAndWindowSize = "ResetFontAndWindowSize"

Action.ResetFontSize = "ResetFontSize"

Action.ResetTerminal = "ResetTerminal"

---@param param RotatePanesParams
---@return {RotatePanes: RotatePanesParams}
Action.RotatePanes = function(param) end

Action.ScrollByCurrentEventWheelDelta = "ScrollByCurrentEventWheelDelta"

---@param param ScrollByLineParams
---@return {ScrollByLine: ScrollByLineParams}
Action.ScrollByLine = function(param) end

---@param param ScrollByPageParams
---@return {ScrollByPage: ScrollByPageParams}
Action.ScrollByPage = function(param) end

Action.ScrollToBottom = "ScrollToBottom"

---@param param ScrollToPromptParams
---@return {ScrollToPrompt: ScrollToPromptParams}
Action.ScrollToPrompt = function(param) end

Action.ScrollToTop = "ScrollToTop"

---@param param SearchParams
---@return {Search: SearchParams}
Action.Search = function(param) end

---@param param SelectTextAtMouseCursorParams
---@return {SelectTextAtMouseCursor: SelectTextAtMouseCursorParams}
Action.SelectTextAtMouseCursor = function(param) end

---@param param SendKeyParams
---@return {SendKey: SendKeyParams}
Action.SendKey = function(param) end

---@param param SendStringParams
---@return {SendString: SendStringParams}
Action.SendString = function(param) end

Action.SetPaneZoomState = "SetPaneZoomState"

---@param param SetWindowLevelParams
---@return {SetWindowLevel: SetWindowLevelParams}
Action.SetWindowLevel = function(param) end

Action.Show = "Show"

Action.ShowDebugOverlay = "ShowDebugOverlay"

Action.ShowLauncher = "ShowLauncher"

---@param param ShowLauncherArgsParams
---@return {ShowLauncherArgs: ShowLauncherArgsParams}
Action.ShowLauncherArgs = function(param) end

Action.ShowTabNavigator = "ShowTabNavigator"

---@param param SpawnCommandInNewTabParams
---@return {SpawnCommandInNewTab: SpawnCommandInNewTabParams}
Action.SpawnCommandInNewTab = function(param) end

---@param param SpawnCommandInNewWindowParams
---@return {SpawnCommandInNewWindow: SpawnCommandInNewWindowParams}
Action.SpawnCommandInNewWindow = function(param) end

---@param param SpawnTabParams
---@return {SpawnTab: SpawnTabParams}
Action.SpawnTab = function(param) end

Action.SpawnWindow = "SpawnWindow"

---@param param SplitHorizontalParams
---@return {SplitHorizontal: SplitHorizontalParams}
Action.SplitHorizontal = function(param) end

---@param param SplitPaneParams
---@return {SplitPane: SplitPaneParams}
Action.SplitPane = function(param) end

---@param param SplitVerticalParams
---@return {SplitVertical: SplitVerticalParams}
Action.SplitVertical = function(param) end

Action.StartWindowDrag = "StartWindowDrag"

---@param param SwitchToWorkspaceParams
---@return {SwitchToWorkspace: SwitchToWorkspaceParams}
Action.SwitchToWorkspace = function(param) end

---@param param SwitchWorkspaceRelativeParams
---@return {SwitchWorkspaceRelative: SwitchWorkspaceRelativeParams}
Action.SwitchWorkspaceRelative = function(param) end

Action.ToggleAlwaysOnBottom = "ToggleAlwaysOnBottom"

Action.ToggleAlwaysOnTop = "ToggleAlwaysOnTop"

Action.ToggleFullScreen = "ToggleFullScreen"

Action.TogglePaneZoomState = "TogglePaneZoomState"
