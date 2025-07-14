KM = {
  RemoveHighlight = { '<Esc>', 'Remove highlight' },
  MoveFocusLeftWindow = { '<C-h>', 'Move focus to the left window' },
  MoveFocusRightWindow = { '<C-l>', 'Move focus to the right window' },
  MoveFocusLowerWindow = { '<C-j>', 'Move focus to the lower window' },
  MoveFocusUpperWindow = { '<C-k>', 'Move focus to the upper window' },
  OpenQuickfixList = { '<leader>q', 'Open diagnostic [Q]uickfix list' },
  OpenOil = { '<leader>-', 'Open oil file browser' },
  SearchHelp = { '<leader>sh', 'Search Help' },
  SearchKeymaps = { '<leader>sk', 'Search Keymaps' },
  SearchFiles = { '<leader>sf', 'Search Files' },
  SearchSelectTelescope = { '<leader>ss', 'Search Select Telescope' },
  SearchCurrentWord = { '<leader>sw', 'Search current Word' },
  GrepSearch = { '<leader>sg', 'Search by Grep' },
  SearchDiagnostics = { '<leader>sd', 'Search Diagnostics' },
  SearchResume = { '<leader>sr', 'Search Resume' },
  SearchRecentFiles = { '<leader>s.', 'Search Recent Files ("." for repeat)' },
  SearchBuffers = { '<leader><leader>', 'Find existing buffers' },
  SearchCurrentBuffer = { '<leader>/', '/ Fuzzily search in current buffer' },
  SearchOpenFiles = { '<leader>s/', 'Search / in Open Files' },
  SearchNeovimFiles = { '<leader>sn', 'Search Neovim files' },

  -- navigation
  GotoDefinition = { '<leader>gd', 'Goto Definition' },
  GoToDeclaration = { '<leader>gD', 'Goto Declaration' },
  GotoTypeDefinition = { '<leader>gt', 'Goto Type Definition' },
  -- search
  SearchDocumentSymbols = { '<leader>fS', 'Search Document Symbols' },
  SearchSymbols = { '<leader>fs', 'Search Symbols' },
  SearchUsages = { '<leader>fu', 'Search Usages' },
  SearchImplementations = { '<leader>fi', 'Search Implementations' },
  -- actions
  ShowCodeActions = { '<leader>a', 'Show Code Actions' },
  RenameSymbol = { '<leader>rn', 'Rename symbol' },
  HoverDocumentation = { '<leader>K', 'Hover documentation' },
  OrganizeImports = { '<leader>o', 'Organize imports' },
}

KMap = function(keyAndDesc, action)
  if action then
    vim.keymap.set('n', keyAndDesc[1], action, { desc = keyAndDesc[2] })
  end
end
