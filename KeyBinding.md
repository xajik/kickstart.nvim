| **Mode** | **Key binding / Command / Action Key** | **Action**                              | **Description**               |
| -------- | ---------------- | --------------------------------------  | ----------------------------- |
| n/v      | `<Space>`       | `<Nop>`                                 |                             |
| n        | `k`           | `"v:count == 0 ? 'gk' : 'k'"`            | Deal with word wrap         |
| n        | `j`           | `"v:count == 0 ? 'gj' : 'j'"`            | Deal with word wrap         |
| n        | `<leader>?`   | `require('telescope.builtin').oldfiles`  |Find recently opened files  |
| n        | `<leader><space>` | `require('telescope.builtin').buffers`   |Find existing buffers       |
| n        | `<leader>/`   | `telescope.builtin.current_buffer_fuzzy_find` |Fuzzily search in current buffer |
| n        | `<leader>gf`   | `require('telescope.builtin').git_files` | Search [G]it [F]iles       |
| n        | `<leader>sf`   | `require('telescope.builtin').find_files` | [S]earch [F]iles           |
| n        | `<leader>sh`   | `require('telescope.builtin').help_tags` | [S]earch [H]elp           |
| n        | `<leader>sw`   | `require('telescope.builtin').grep_string` | [S]earch current [W]ord   |
| n        | `<leader>sg`  | `require('telescope.builtin').live_grep` | [S]earch by [G]rep    |
| n        | `<leader>sd`   | `require('telescope.builtin').diagnostics` | [S]earch [D]iagnostics|
| n        | `<leader>sr`   | `require('telescope.builtin').resume`  | [S]earch [R]resume |
| n        | `[d`           | `vim.diagnostic.goto_prev`               |Go to previous diagnostic message |
| n        | `]d`           | `vim.diagnostic.goto_next`               |Go to next diagnostic message |
| n        | `<leader>e`   | `vim.diagnostic.open_float`              |Open floating diagnostic message |
| n        | `<leader>q`   | `vim.diagnostic.setloclist`             |Open diagnostics list  |
| n        | `<leader>rn`   | `vim.lsp.buf.rename`                     | [R]e[n]ame               |
| n        | `<leader>ca`   | `vim.lsp.buf.code_action`           | [C]ode [A]ction          |
| n        | `gd`           | `vim.lsp.buf.definition`              | [G]oto [D]efinition      |
| n        | `gr`           | `require('telescope.builtin').lsp_references` | [G]oto [R]eferences    |
| n        | `gI`           | `require('telescope.builtin').lsp_implementations` | [G]oto [I]mplementation |
| n        | `<leader>D`   | `vim.lsp.buf.type_definition`          | Type [D]efinition        |
| n        | `<leader>ds`   | `require('telescope.builtin').lsp_document_symbols` | [D]ocument [S]ymbols   |
| n        | `<leader>ws`   | `require('telescope.builtin').lsp_dynamic_workspace_symbols` | [W]orkspace [S]ymbols |
| n        | `K`           | `vim.lsp.buf.hover`                      | Hover Documentation     |
| n        | `<C-k>`       | `vim.lsp.buf.signature_help`             | Signature Documentation |
| n        | `gD`           | `vim.lsp.buf.declaration`              | [G]oto [D]eclaration   |
| n        | `<leader>wa`   | `vim.lsp.buf.add_workspace_folder`    | [W]orkspace [A]dd Folder |
| n        | `<leader>wr`   | `vim.lsp.buf.remove_workspace_folder`  | [W]orkspace [R]emove Folder |
| n        | `<leader>wl`   | `print(vim.inspect(vim.lsp.buf.list_workspace_folders()))` | [W]orkspace [L]ist Folders |
| n        | `<F5>`       | `dap.continue`                           | Debug: Start/Continue        |
| n        | `<F1>`       | `dap.step_into`                          | Debug: Step Into             |
| n        | `<F2>`       | `dap.step_over`                          | Debug: Step Over             |
| n        | `<F3>`       | `dap.step_out`                           | Debug: Step Out              |
| n        | `<leader>b` | `dap.toggle_breakpoint`                 | Debug: Toggle Breakpoint     |
| n        | `<leader>B` | `dap.set_breakpoint(vim.fn.input 'Breakpoint condition: ')` | Debug: Set Breakpoint |
| n        | `<F7>`       | `dapui.toggle`                            | Debug: See last session result |
| User Command    | `:KickstartFormatToggle` | Toggle the `format_is_enabled` variable | Toggle auto-formatting on and off |
| n        | `<leader>xx` | `<cmd>Trouble<cr>`                       | Trouble                      |
| n        | `<leader>xt` | `<cmd>TroubleToggle<cr>`                 | Toggle Trouble               |
| n        | `<leader>xw` | `<cmd>Trouble lsp_workspace_diagnostics<cr>` | LSP Workspace Diagnostics  |
| n        | `<leader>xd` | `<cmd>Trouble lsp_document_diagnostics<cr>`  | LSP Document Diagnostics    |
| n        | `<leader>xl` | `<cmd>Trouble loclist<cr>`                   | List of Locations on Trouble |
| n        | `<leader>xq` | `<cmd>Trouble quickfix<cr>`                 | Quickfix on Trouble        |
| n        | `<Leader>f` | `:Neoformat<CR>`                        | Neoformat (formatting tool) |
| n        | `<C-T>` | `:Neotree toggle<CR>`                        | NeoTree toggle | 
| `h`| `:Neotree toggle<CR>` | If current node is a directory and is expanded, collapse it. Otherwise, focus on the parent node |
| `l`| `:Neotree toggle<CR>` | If current node is a directory and is collapsed, expand it. If it is collapsed but has children, focus on the first child. |
| Normal        | `h` | Cursor movement | Move cursor left        |
| Normal        | `j` | Cursor movement | Move cursor down        |
| Normal        | `k` | Cursor movement | Move cursor up        |
| Normal        | `l` | Cursor movement | Move cursor right        |
| Normal        | `i` | Mode change | Enter insert mode at cursor       |
| Normal        | `a` | Mode change | Enter insert mode after cursor      |
| Normal        | `:wq` | File operation | Write (save) and quit        |
| Normal        | `u` | Undo operation | Undo last action        |
| Normal        | `dd` | Line operation | Delete (cut) a line       |
| Normal        | `yy` | Line operation | Yank (copy) a line        |
| Normal        | `p` | Paste operation | Paste after cursor      |
| Normal   | `V`             |                                       | Start line selection                        |
| Visual   | `V`             |                                       | Select full lines                           |
| Normal   | `v`             |                                       | Start text selection                        |
| Visual   | `v`             |                                       | Select text                                 |
| Normal   | `gv`            |                                       | Reselect last visual selection              |
| Normal   | `viw`           |                                       | Select entire word under cursor             |
| Normal   | `vic`           |                                       | Select inside block `{}`                    |
| Normal   | `vi[`           |                                       | Select inside block `[]`                    |
| Normal   | `vi(`           |                                       | Select inside block `()`                    |
| Normal   | `vi<`           |                                       | Select inside block `<>`                    |
| Normal   | `vit`           |                                       | Select inside XML/HTML tag                  |
| Normal   | `ggVG`          |                                       | Select all text                             |
| Normal   | `y`             |                                       | Yank (copy) selected text                   |
| Normal   | `d`             |                                       | Delete selected text                        |
| Visual   | `y`             |                                       | Yank (copy) selected text                   |
| Visual   | `d`             |                                       | Delete selected text                        |
| Visual   | `c`             |                                       | Change selected text                        |
| Visual   | `>`             |                                       | Shift right selected text                   |
| Visual   | `<`             |                                       | Shift left selected text                    |
| Visual   | `=`             |                                       | Auto-indent selected text                   |