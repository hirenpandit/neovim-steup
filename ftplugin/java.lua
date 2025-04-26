-- local config = {
-- 	cmd = { "/Users/hirenpandit/Software/jdt-language-server-1.46.1-202504011455/bin/jdtls" },
-- 	root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
-- }
-- require("jdtls").start_or_attach(config)
--

local config = {
	cmd = {
		"/Users/hirenpandit/Software/jdt-language-server-1.46.1-202504011455/bin/jdtls",
	},
	settings = {
		-- settings configuration
	},
	init_options = {
		bundles = {
			vim.fn.glob(
				"/Users/hirenpandit/Software/java-debug-0.53.1/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-0.53.1.jar",
				1
			),
		},
	},
}

config["on_attach"] = function(client, bufnr)
	require("jdtls").setup_dap({ hotcodereplace = "auto" })
end

-- This starts a new client & server,
-- or attaches to an existing client & server depending on the `root_dir`.
require("jdtls").start_or_attach(config)
