# Terraform Error Handling

## 1. Common Syntax Errors
| Error | Meaning | Fix |
| :--- | :--- | :--- |
| **Duplicate resource** | Two things have the same name. | Rename or delete one. |
| **Missing required argument** | You forgot a field like `vpc_id`. | Add the missing field. |
| **Invalid reference** | You pointed to a resource that doesn't exist. | Check your spelling. |

## 2. Nano Navigation Shortcuts
| Shortcut | Action |
| :--- | :--- |
| `Ctrl + W` | Search for text (useful for finding line 65!). |
| `Ctrl + _` | Enter a line number to jump directly to it. |
| `Ctrl + C` | Show current line number. |

## 3. The "Success" Habit
* Always run `terraform fmt` before `terraform validate`. It cleans up the spacing and makes it easier to spot where one resource ends and another begins.


