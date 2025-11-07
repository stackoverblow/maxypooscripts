local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "maxypoo hub",
    Icon = 0,
    LoadingTitle = "maxypoo scripts",
    LoadingSubtitle = "by maxypoo",
    ShowText = "Rayfield",
    Theme = "Default",

    ToggleUIKeybind = "K",

    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,

    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil,
        FileName = "maxypooscripts"
    },

    Discord = {
        Enabled = false,
        Invite = "EMU5g5M8",
        RememberJoins = true
    },

    KeySystem = true,
    KeySettings = {
        Title = "Key System",
        Subtitle = "Key System",
        Note = "Join our Discord server for a key.", -- Use this to tell the user how to get a key
        FileName = "maxypookey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
        SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
        GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
        Key = {"Xeno"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
})

local Scripts = Window:CreateTab("scripts", "scroll-text")
Tab:CreateButton({
    Name = "Join our Discord!",
    Callback = function()
        game.Players.LocalPlayer:PromptOpenURL("https://discord.gg/EMU5g5M8")
    end,
})
Tab:CreateButton({
    Name = "Dress to Impress",
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/DTI-GUI-V2/main/dti_gui_v2.lua",true))()
        end)
    end,
})
