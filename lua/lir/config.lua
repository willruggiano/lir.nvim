-----------------------------
-- Private
-----------------------------
local defaults_values = {
  show_hidden_files = false,
  devicons_enable = false,
  mappings = {},
  float = {
    winblend = 15,
    curdir_window = {
      enable = false,
      highlight_dirname = false
    },
  },
  hide_cursor = false,
}

-----------------------------
-- Export
-----------------------------

---@class lir.config
---@field values lir.config.values
local config = {}

---@class lir.config.values
---@field show_hidden_files boolean
---@field devicons_enable   boolean
---@field mappings          table
---@field float             lir.config.values.float
---@field hide_cursor       boolean
config.values = {}

---@class lir.config.values.float
---@field winblend        number
---@field winopts         table
---@field curdir_window   lir.config.values.float.curdir_window

---@class lir.config.values.float.size_percentage
---@field width  number
---@field height number

---@class lir.config.values.float.curdir_window
---@field enable  boolean
---@field highlight_dirname boolean

---@param opts lir.config.values
function config.set_default_values(opts)
  config.values = vim.tbl_deep_extend("force", defaults_values, opts or {})
end

return config
