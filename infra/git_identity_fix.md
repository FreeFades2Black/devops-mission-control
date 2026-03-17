# Git Identity Fixes

## 1. Identity Check
| Command | Purpose |
| :--- | :--- |
| `git config user.email` | Check what email is currently active. |
| `git log --pretty=format:"%ae"` | See the email attached to past commits. |

## 2. Fixing History
If you need to fix more than just the last commit, it's more complex, but for the *last* commit:
```bash
git commit --amend --reset-author --no-edit


