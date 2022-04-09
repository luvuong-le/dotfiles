local on_attach = function(client, bufnr)
    protocol.CompletionItemKind = {
    '', -- Text
    '', -- Method
    '', -- Function
    '', -- Constructor
    '', -- Field
    '', -- Variable
    '', -- Class
    'ﰮ', -- Interface
    '', -- Module
    '', -- Property
    '', -- Unit
    '', -- Value
    '', -- Enum
    '', -- Keyword
    '﬌', -- Snippet
    '', -- Color
    '', -- File
    '', -- Reference
    '', -- Folder
    '', -- EnumMember
    '', -- Constant
    '', -- Struct
    '', -- Event
    'ﬦ', -- Operator
    '', -- TypeParameter
  }
end

require('neoscroll').setup({
    mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
                '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
    hide_cursor = true,          -- Hide cursor while scrolling
    stop_eof = true,             -- Stop at <EOF> when scrolling downwards
    use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
    respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
    cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
    easing_function = nil,       -- Default easing function
    pre_hook = nil,              -- Function to run before the scrolling animation starts
    post_hook = nil,             -- Function to run after the scrolling animation ends
    performance_mode = false,    -- Disable "Performance Mode" on all buffers.
})

require('lualine').setup({
	options = { theme = 'Horizon' },
  sections = {
    lualine_a = {
      {
        'buffers',
        show_filename_only = true,   -- Shows shortened relative path when set to false.
        show_modified_status = true, -- Shows indicator when the buffer is modified.

        mode = 0, -- 0: Shows buffer name
                  -- 1: Shows buffer index (bufnr)
                  -- 2: Shows buffer name + buffer index (bufnr)

        max_length = vim.o.columns * 2 / 3, -- Maximum width of buffers component,
                                            -- it can also be a function that returns
                                            -- the value of `max_length` dynamically.
        filetype_names = {
          TelescopePrompt = 'Telescope',
          dashboard = 'Dashboard',
          packer = 'Packer',
          fzf = 'FZF',
          alpha = 'Alpha'
        }, -- Shows specific buffer name for that filetype ( { `filetype` = `buffer_name`, ... } )

        -- buffers_color = {
        --   -- Same values as the general color option can be used here.
        --   active = 'lualine_{section}_normal',     -- Color for active buffer.
        --   inactive = 'lualine_{section}_inactive', -- Color for inactive buffer.
        -- },
      }
    },
    lualine_b = {
      {
        'tabs',
        max_length = vim.o.columns / 3, -- Maximum width of tabs component.
                                        -- Note:
                                        -- It can also be a function that returns
                                        -- the value of `max_length` dynamically.
        mode = 0, -- 0: Shows tab_nr
                  -- 1: Shows tab_name
                  -- 2: Shows tab_nr + tab_name

        -- tabs_color = {
        --   -- Same values as the general color option can be used here.
        --   active = 'lualine_{section}_normal',     -- Color for active tab.
        --   inactive = 'lualine_{section}_inactive', -- Color for inactive tab.
        -- },
      }
    }
  }
})

local actions = require('telescope.actions')

require('telescope').setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}

local lsp_installer = require("nvim-lsp-installer")

-- Register a handler that will be called for each installed server when it's ready (i.e. when installation is finished
-- or if the server is already installed).
lsp_installer.on_server_ready(function(server)
    local opts = {}

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

    -- This setup() function will take the provided server configuration and decorate it with the necessary properties
    -- before passing it onwards to lspconfig.
    -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    server:setup(opts)
end)
