return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      follow_current_file = {
        enabled = true, -- auto-expand the current file’s path
        leave_dirs_open = false, -- collapse other dirs
      },
      group_empty_dirs = true, -- optional: groups empty dirs together
    },
    default_component_configs = {
      indent = {
        with_markers = true,
        indent_size = 2,
      },
    },
    window = {
      mappings = {
        -- `zc` and `zo` work like in Vim to fold/unfold dirs
      },
    },
  },
}
