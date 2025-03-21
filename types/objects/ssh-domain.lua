---@meta

---@class SSHDomainObj
---@field name string The name of this specific domain.  Must be unique amongst all types of domain in the configuration file.
---@field remote_address string Identifies the host:port pair of the remote server. Can be a DNS name or an IP address with an optional ":port" on the end.
---@field no_agent_auth boolean Whether agent auth should be disabled. Set to true to disable it.
---@field username string The username to use for authenticating with the remote host.
---@field connect_automatically boolean If true, connect to this domain automatically at startup
---@field timeout number Specify an alternative read timeout
---@field remote_wezterm_path string The path to the wezterm binary on the remote host. Primarily useful if it isn't installed in the $PATH that is configure for ssh.
