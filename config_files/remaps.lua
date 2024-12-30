vim.cmd("set number")
vim.cmd("set relativenumber")

vim.g.mapleader =  " "
vim.keymap.set('n', '<Leader>e', ":Ex<CR>")
vim.keymap.set('n', '<leader>w', ":w<CR>")
vim.keymap.set('n', '<leader>q', ":q<CR>")

--kind of macros

local function is_a_cpp_project()
        local is_present = {
                "CMakeLists.txt",
                "Makefile",
                ".cpp",
                ".h",
                "/src",
                "/include",
        }

        local cwd = vim.fn.getcwd() --(CURRENT WORKING DIRECTORY)

        for _, indicator in ipairs(is_present) do
                if vim.fn.glob(cwd .. "/*" .. indicator) ~= "" then
                        return true
                end
        end

        return false
end

local function go_to_build_dir()
        local build_dir = "build"
        local cwd = vim.fn.getcwd()
        local build_path = cwd .. '/' .. build_dir

        if vim.fn.isdirectory(build_path) == 1 then
                vim.fn.chdir(build_path)
        else
        end
end

vim.keymap.set('n', '<leader>run', function()
        if is_a_cpp_project() then
                go_to_build_dir()
                vim.fn.system("cmake .. -DCMAKE_EXPORT_COMPILE_COMMANDS=ON")
                vim.fn.system("make")
                local project_name = ":!./" .. vim.fn.system('cmake -L .. | grep "PROJECT_NAME" | cut -d "=" -f2'):gsub("^%s*(.-)%s*$", "%1")
                vim.cmd(project_name)
        else
                vim.cmd(":w")
                vim.cmd(":!g++ % -o output")  -- Changed from output.sh to just output
                vim.cmd(":!./output")         -- Execute the compiled binary
        end
end)
