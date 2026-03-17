# GitHub Contribution Troubleshooting

## 1. The "Green Square" Checklist
| Requirement | Status Check |
| :--- | :--- |
| **Default Branch** | Is the code in `main`? |
| **Email Match** | Does `git config user.email` match GitHub? |
| **Standalone Repo** | Is this a real repo (not a fork)? |

## 2. Force an Identity Update
If your email was wrong, you can fix your local identity for future commits:
```bash
git config --global user.name "Your Name"
git config --global user.email "your-github-email@example.com"


