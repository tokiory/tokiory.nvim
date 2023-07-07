local spectre = require('spectre')

local mappings = {
  ['toggle_line'] = {
      map = "dd",
      cmd = "<cmd>lua require('spectre').toggle_line()<CR>",
      desc = "toggle current item"
  },
  ['replace_cmd'] = {
      map = "<leader>c",
      cmd = "<cmd>lua require('spectre.actions').replace_cmd()<CR>",
      desc = "input replace vim command"
  },
  ['show_option_menu'] = {
      map = "<leader>o",
      cmd = "<cmd>lua require('spectre').show_options()<CR>",
      desc = "show option"
  },
  ['run_current_replace'] = {
    map = "r",
    cmd = "<cmd>lua require('spectre.actions').run_current_replace()<CR>",
    desc = "replace current line"
  },
  ['run_replace'] = {
      map = "R",
      cmd = "<cmd>lua require('spectre.actions').run_replace()<CR>",
      desc = "replace all"
  },
  ['change_view_mode'] = {
      map = "<leader>v",
      cmd = "<cmd>lua require('spectre').change_view()<CR>",
      desc = "change result view mode"
  },
  ['toggle_live_update']={
    map = "tu",
    cmd = "<cmd>lua require('spectre').toggle_live_update()<CR>",
    desc = "update change when vim write file."
  },
  ['toggle_ignore_case'] = {
    map = "ti",
    cmd = "<cmd>lua require('spectre').change_options('ignore-case')<CR>",
    desc = "toggle ignore case"
  },
  ['toggle_ignore_hidden'] = {
    map = "th",
    cmd = "<cmd>lua require('spectre').change_options('hidden')<CR>",
    desc = "toggle search hidden"
  },
  ['resume_last_search'] = {
    map = "<leader>l",
    cmd = "<cmd>lua require('spectre').resume_last_search()<CR>",
    desc = "resume last search before close"
  },
}

spectre.setup({
  live_update = true,
  mapping = mappings,
})
