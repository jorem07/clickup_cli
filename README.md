# clickup-cli

A small bash CLI for the ClickUp API v2. Requires `curl` and `jq`.

## Install
```bash
./install.sh
$EDITOR ~/.config/clickup-cli/config   # add CLICKUP_TOKEN (Settings → Apps → API Token)
```

## Find your list ID
```bash
clickup workspaces
clickup spaces <team_id>
clickup folders <space_id>
clickup lists <folder_id>          # or: clickup lists --space <space_id>
```
Put the ID in `CLICKUP_LIST_ID` to skip `-l` later.

## Usage
```bash
clickup create "Fix login bug"
clickup create -d "Users can't reset password" -p 2 -D tomorrow -t bug,auth -a 183 "Fix login bug"
clickup create -l 901234567 -s "in progress" "Write docs"
clickup tasks
clickup get <task_id>
clickup status <task_id> "complete"
clickup comment <task_id> "Deployed to staging"
```

## Notes
- `-D` uses GNU `date -d`. On macOS: `brew install coreutils` and alias `date=gdate`.
- Status names must match those configured on the target list.
- Keep `~/.config/clickup-cli/config` private (`chmod 600`); never commit your token.
