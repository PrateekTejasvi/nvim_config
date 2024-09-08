local M  = {}
M.search_config = function()
    require("telescope.builtin").find_files({
        prompt_title = "CONFIG",
        cwd = "~/.config/nvim/",
        file_ignore_patterns = {"^plugged/"}
    })
end 


M.search_programs = function()
    require("telescope.builtin").find_files({
        prompt_title = "<Local Programs>",
        cwd = "~/programs",
        })
end
M.search_dotfiles = function()
    require("telescope.builtin").find_files({
        prompt_title = "<DOTFILES>",
        cwd = "~/.config",

    })
end
M.search_word = function ()
    require("telescope.builtin").live_grep({
        prompt_title = "<SEARCH VIM-CONFIG>",
        prompt_prefix ="🌚︎>",
        cwd = "~/.config/nvim"

    })
end
M.search_projects = function()
    require("telescope.builtin").find_files({
        prompt_title = "<PROJECTS>",
        prompt_prefix="❯❯",
        cwd = "~/projects/",
        file_ignore_patterns = {"^node_modules/","/^assets/"}
    })
end

return M




