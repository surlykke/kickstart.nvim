RemoveHighlight = 'RemoveHighlight'
MoveFocusLeftWindow = 'MoveFocusLeftWindow'
MoveFocusRightWindow = 'MoveFocusRightWindow'
MoveFocusLowerWindow = 'MoveFocusLowerWindow'
MoveFocusUpperWindow = 'MoveFocusUpperWindow'
Search_Help = 'Search_Help'
Search_Keymaps = 'Search_Keymaps'
Search_Files = 'Search_Files'
Search_Pickers = 'Search_Pickers'
Search_CurrentWord = 'Search_CurrentWord'
Search_Text = 'Search_Text'
Search_Errors = 'Search_Errors'
Search_Resume = 'Search_Resume'
Search_Buffers = 'Search_Buffers'
Search_CurrentBuffer = 'Search_CurrentBuffer'
Search_Symbols = 'Search_Symbols'
Search_Usages = 'Search_Usages'
Search_Implementations = 'Search_Implementations'
Goto_Definition = 'Goto_Definition'
Goto_Declaration = 'Goto_Declaration'
Goto_TypeDefinition = 'Goto_TypeDefinition'
Goto_QuickfixList = 'Goto_QuickfixList'
Launch_Oil = 'Launch_Oil'
Action_Show = 'Action_Show'
Action_Rename = 'Action_Rename'
Action_HoverDoc = 'Action_HoverDoc'
Action_OrganizeImports = 'Action_OrganizeImports'
Action_FormatBuffer = 'Action_FormatBuffer'

local mappings = {
  -- keys, id, description
  { '<Esc>', RemoveHighlight, 'Remove highlight' },
  { '<C-h>', MoveFocusLeftWindow, 'Move focus to the left window' },
  { '<C-l>', MoveFocusRightWindow, 'Move focus to the right window' },
  { '<C-j>', MoveFocusLowerWindow, 'Move focus to the lower window' },
  { '<C-k>', MoveFocusUpperWindow, 'Move focus to the upper window' },
  -- Search
  { '<leader>sb', Search_Buffers, 'Find existing buffers' },
  { '<leader>sc', Search_CurrentBuffer, '/ Fuzzily search in current buffer' },
  { '<leader>se', Search_Errors, 'Search_Errors' },
  { '<leader>sf', Search_Files, 'Search Files' },
  { '<leader>sh', Search_Help, 'Search Help' },
  { '<leader>si', Search_Implementations, ' Implementations' },
  { '<leader>sk', Search_Keymaps, 'Search Keymaps' },
  { '<leader>sp', Search_Pickers, 'Search Pickers' },
  { '<leader>sr', Search_Resume, 'Search Resume' },
  { '<leader>ss', Search_Symbols, ' Symbols' },
  { '<leader>st', Search_Text, 'Search Text' },
  { '<leader>su', Search_Usages, ' Usages' },
  { '<leader>sw', Search_CurrentWord, ' Usages' },
  -- Navigation
  { '<leader>gd', Goto_Definition, 'Goto Definition' },
  { '<leader>gD', Goto_Declaration, 'Goto Declaration' },
  { '<leader>gt', Goto_TypeDefinition, 'Goto Type Definition' },
  { '<leader>gq', Goto_QuickfixList, 'Goto quickfix list' },
  -- Actions
  { '<leader>o', Launch_Oil, 'Launch Oil' },
  { '<leader>as', Action_Show, 'Show Code Actions' },
  { '<leader>ar', Action_Rename, 'Rename symbol' },
  { '<leader>ad', Action_HoverDoc, 'Hover documentation' },
  { '<leader>ao', Action_OrganizeImports, 'Organize imports' },
  { '<leader>af', Action_FormatBuffer, 'Format buffer' },
}
KeyGroups = {
  { '<leader>s', group = 'Search' },
  { '<leader>g', group = 'Goto' },
  { '<leader>a', group = 'Action' },
}

--        { '<leader>s', group = '[S]earch' },
--        { '<leader>t', group = '[T]oggle' },
--        { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
--      },

Kmap = function(id, action, bufferspecific)
  for _, val in pairs(mappings) do
    if val[2] == id then
      vim.keymap.set('n', val[1], action, { desc = val[3], buffer = bufferspecific })
      return
    end
  end
  error('No keymapping for ' + id)
end
