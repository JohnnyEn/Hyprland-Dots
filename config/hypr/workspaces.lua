-- /* ---- 💫 https://github.com/JaKooLit 💫 ---- */
-- Workspace rules
-- See https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Workspaces 1-10: monitor-preferred layout with persistent = true.
-- persistent = true ensures workspaces survive monitor disconnection (no orphan 10-20 on undock).
-- monitor uses stable serial descriptors, independent of DP port numbering (DP-3 vs DP-5 etc).
-- On undock: workspaces fall back to eDP-1. On redock: they return to their assigned monitor.

hl.workspace_rule({ workspace = 1,  monitor = "desc:Dell Inc. DELL S2721DS 8BMKQ43", persistent = true, default = true })
hl.workspace_rule({ workspace = 2,  monitor = "desc:Dell Inc. DELL S2721DS 8BMKQ43", persistent = true })
hl.workspace_rule({ workspace = 3,  monitor = "desc:Dell Inc. DELL S2721DS FHMKQ43", persistent = true, default = true })
hl.workspace_rule({ workspace = 4,  monitor = "desc:Dell Inc. DELL S2721DS FHMKQ43", persistent = true })
hl.workspace_rule({ workspace = 5,  monitor = "eDP-1",                               persistent = true, default = true })
hl.workspace_rule({ workspace = 6,  monitor = "desc:Dell Inc. DELL S2721DS 8BMKQ43", persistent = true })
hl.workspace_rule({ workspace = 7,  monitor = "desc:Dell Inc. DELL S2721DS 8BMKQ43", persistent = true })
hl.workspace_rule({ workspace = 8,  monitor = "desc:Dell Inc. DELL S2721DS FHMKQ43", persistent = true })
hl.workspace_rule({ workspace = 9,  monitor = "desc:Dell Inc. DELL S2721DS FHMKQ43", persistent = true })
hl.workspace_rule({ workspace = 10, monitor = "eDP-1",                               persistent = true })
