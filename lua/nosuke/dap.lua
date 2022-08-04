local dap = require('dap')

require("dap-vscode-js").setup({
  -- node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
  -- debugger_path = "(runtimedir)/site/pack/packer/opt/vscode-js-debug", -- Path to vscode-js-debug installation. 
  adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' }, -- which adapters to register in nvim-dap
})

dap.configurations.moleculer = {
   {                                                                                                                                                                                                                                                    
           type = "pwa-node",                                                                                                                                                                                                                                
           request = "launch",                                                                                                                                                                                                                               
           name = "Debug",                                                                                                                                                                                                                                   
           program = "${workspaceRoot}/node_modules/moleculer/bin/moleculer-runner.js",                                                                                                                                                                      
           cwd = "${workspaceRoot}",                                                                                                                                                                                                                         
           args = {"src/services", "-e", "--hot"},                                                                                                                                                                                                           
           runtimeVersion = "16",                                                                                                                                                                                                                            
           runtimeArgs = {"--max-http-header-size=65536", "--trace-warnings"},                                                                                                                                                                               
           outFiles = {"${workspaceFolder}/src/**/*.js"},                                                                                                                                                                                                    
           resolveSourceMapLocations = {                                                                                                                                                                                                                     
            "${workspaceFolder}/**",                                                                                                                                                                                                                         
            "!**/node_modules/**"                                                                                                                                                                                                                            
           },
    }
}
