# Terraform Execution Lifecycle

## 1. The Core Commands
| Command | Action | Purpose |
| :--- | :--- | :--- |
| `terraform init` | Initialize | Downloads plugins/providers. |
| `terraform fmt` | Format | Fixes code spacing/indentation. |
| `terraform validate` | Validate | Checks for syntax/logic errors. |
| `terraform plan` | Plan | Shows what will be built. |
| `terraform apply` | Apply | Deploys the actual infrastructure. |

## 2. Reading the Plan
* **`+` (Green):** Resource will be created.
* **`~` (Yellow):** Resource will be updated in place.
* **`-` (Red):** Resource will be deleted.

## 3. Keyboard Shortcuts
| Shortcut | Action |
| :--- | :--- |
| `Shift + Insert` | Paste a command into the Vagrant terminal. |
| `Ctrl + C` | Cancel a plan if it's taking too long or looks wrong. |


