return {
	{
	  'mattn/emmet-vim',
	  init = function()
	    vim.g.user_emmet_leader_key = '<C-E>'
	  end
	},
	{
	  "nvim-telescope/telescope.nvim",
	  opts = {
	    defaults = {
	      path_display = { "absolute" }, -- optional, keep or remove
	      sorting_strategy = "ascending",
	      prompt_position = "top",
	      vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
            "--sort=path",
          },
	      attach_mappings = function(prompt_bufnr, _)
	        local actions = require("telescope.actions")
	        local action_state = require("telescope.actions.state")
	
	        local function update_status()
	          local picker = action_state.get_current_picker(prompt_bufnr)
	          vim.notify(vim.inspect(vim.tbl_keys(picker))) -- debug line, remove after checking
	          local entry = action_state.get_selected_entry()
	          if not picker or not entry then
	            return
	          end
	          local path = entry.path or entry.filename or entry.value
	          if not path then
	            return
	          end
	          local abs = vim.fn.fnamemodify(path, ":p")
	        
	          if picker.results_border then
	            picker.results_border:change_title(abs, "S")
	          end
	          if picker.preview_border then
	            picker.preview_border:change_title(abs, "S")
	          end
	        end

	        local function jump_and_focus(edit_cmd)
	          return function(prompt_bufnr)
	            local entry = action_state.get_selected_entry()
	            actions.close(prompt_bufnr)
	            if not entry then
	              return
	            end
	            local path = entry.path or entry.filename or entry.value
	            if path then
	              vim.cmd(edit_cmd .. " " .. vim.fn.fnameescape(path))
	            end
	            if entry.lnum then
	              pcall(vim.api.nvim_win_set_cursor, 0, { entry.lnum, (entry.col or 1) - 1 })
	            end
	            vim.cmd("normal! zz")
	        
	            local bufnr = vim.api.nvim_get_current_buf()
	            local lnum = vim.api.nvim_win_get_cursor(0)[1] - 1
	            local ns = vim.api.nvim_create_namespace("telescope_focus_flash")
	            vim.api.nvim_buf_add_highlight(bufnr, ns, "IncSearch", lnum, 0, -1)
	            vim.defer_fn(function()
	              vim.api.nvim_buf_clear_namespace(bufnr, ns, 0, -1)
	            end, 250)
	          end
	        end
	        
	        actions.select_default:replace(jump_and_focus("edit"))
	        actions.select_horizontal:replace(jump_and_focus("split"))
	        actions.select_vertical:replace(jump_and_focus("vsplit"))
	        actions.select_tab:replace(jump_and_focus("tabedit"))
	
	        actions.move_selection_next:enhance({ post = update_status })
	        actions.move_selection_previous:enhance({ post = update_status })
	        actions.move_selection_better:enhance({ post = update_status })
	        actions.move_selection_worse:enhance({ post = update_status })
	
	        vim.api.nvim_create_autocmd({ "TextChangedI", "TextChangedP" }, {
	          buffer = prompt_bufnr,
	          callback = update_status,
	        })
	
	        vim.schedule(update_status)
	
	        return true
	      end,
	    },
	    pickers = {
	    	live_grep = {
	    		layout_config = {
	    			width = 0.85,
	    			height = 0.85,
	    		},
	    		entry_maker = (function()
    		      local make_entry = require("telescope.make_entry")
    		      local gen = make_entry.gen_from_vimgrep({})
    		      return function(line)
    		        local entry = gen(line)
    		        if entry then
    		          entry.display = function(e)
    		            return e.filename
    		          end
    		        end
    		        return entry
    		      end
    		    end)(),
	    	}
	    }
	  },
	},
	{
	  "folke/todo-comments.nvim",
	  keys = {
	    { "<leader>sT", false },
	  },
	},
}
