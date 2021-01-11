-- local api = vim.api
-- local M = {}

-- function M.makeScratch()
--     api.nvim_command [[enew]]
--     vim.bo[0].swapfile=false
-- end

-- return M
local function printWindowSize()
    print("Hello, world")
end

return {
    printWindowSize = printWindowSize
}
