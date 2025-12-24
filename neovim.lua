return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#121417", -- Default background
                base01 = "#7b8c9d", -- Lighter background (status bars)
                base02 = "#121417", -- Selection background
                base03 = "#7b8c9d", -- Comments, invisibles
                base04 = "#f1f3f4", -- Dark foreground
                base05 = "#f1f3f4", -- Default foreground
                base06 = "#f1f3f4", -- Light foreground
                base07 = "#f1f3f4", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#2e5df9", -- Variables, errors, red
                base09 = "#84a0ff", -- Integers, constants, orange
                base0A = "#4cc0fa", -- Classes, types, yellow
                base0B = "#3dbefa", -- Strings, green
                base0C = "#79cdfb", -- Support, regex, cyan
                base0D = "#5b80fb", -- Functions, keywords, blue
                base0E = "#6a9afb", -- Keywords, storage, magenta
                base0F = "#a3e0ff", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
