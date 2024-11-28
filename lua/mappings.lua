require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- -- new terminals
-- map("n", "<leader>h", function()
--   require("nvchad.term").new { pos = "sp", cmd = "cmd.exe /c pwsh -NoExit -Command '& $PROFILE'" }
-- end, { desc = "terminal new horizontal term" })
--
-- map("n", "<leader>v", function()
--   require("nvchad.term").new { pos = "vsp", cmd = "cmd.exe /c pwsh.exe -NoExit -Command '& $PROFILE'" }
-- end, { desc = "terminal new vertical term" })
--
-- -- toggleable
-- map({ "n", "t" }, "<A-v>", function()
--   require("nvchad.term").toggle {
--     pos = "vsp",
--     cmd = "cmd.exe /c pwsh.exe -NoExit -Command '& $PROFILE'",
--     id = "vtoggleTerm",
--   }
-- end, { desc = "terminal toggleable vertical term" })
--
-- map({ "n", "t" }, "<A-h>", function()
--   require("nvchad.term").toggle {
--     pos = "sp",
--     cmd = "cmd.exe /c pwsh.exe -NoExit -Command '& $PROFILE'",
--     id = "htoggleTerm",
--   }
-- end, { desc = "terminal toggleable horizonal term" })
--
-- map({ "n", "t" }, "<A-i>", function()
--   require("nvchad.term").toggle {
--     pos = "float",
--     cmd = "cmd.exe /c pwsh.exe -NoExit -Command '& $PROFILE'",
--     id = "floatTerm",
--   }
-- end, { desc = "terminal toggleable floating term" })
