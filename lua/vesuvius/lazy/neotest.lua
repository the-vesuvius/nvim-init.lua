return {
    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-neotest/nvim-nio",
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-treesitter/nvim-treesitter",
            {
                "fredrikaverpil/neotest-golang", -- Installation
                dependencies = {
                    "leoluz/nvim-dap-go",
                },
            },
        },
        config = function()
            local neotest = require("neotest")
            neotest.setup({
                adapters = {
                    require("neotest-golang"),
                }
            })

            vim.keymap.set("n", "<leader>tc", function()
                neotest.run.run()
            end)

            vim.keymap.set("n", "<leader>tf", function()
                neotest.run.run(vim.fn.expand("%"))
            end)
        end,
    },
}

