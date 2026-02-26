return {
  {
    "snacks.nvim",
    opts = function(_, opts)
      opts.scroll = { enabled = false }
      opts.indent = opts.indent or {}
      opts.indent.animate = { enabled = false }

      local logo = [[
        ██████╗  █████╗ ███╗   ██╗██╗███████╗██╗     
        ██╔══██╗██╔══██╗████╗  ██║██║██╔════╝██║     
        ██║  ██║███████║██╔██╗ ██║██║█████╗  ██║     
        ██║  ██║██╔══██║██║╚██╗██║██║██╔══╝  ██║     
        ██████╔╝██║  ██║██║ ╚████║██║███████╗███████╗
        ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝╚══════╝╚══════╝
                                                    
            ███████╗██╗      ██████╗ ██╗    ██╗      
            ██╔════╝██║     ██╔═══██╗██║    ██║      
            █████╗  ██║     ██║   ██║██║ █╗ ██║      
            ██╔══╝  ██║     ██║   ██║██║███╗██║      
            ██║     ███████╗╚██████╔╝╚███╔███╔╝      
            ╚═╝     ╚══════╝ ╚═════╝  ╚══╝╚══╝       
      ]]

      opts.dashboard = opts.dashboard or {}
      opts.dashboard.preset = opts.dashboard.preset or {}
      opts.dashboard.preset.header = logo
    end,
  },
}
