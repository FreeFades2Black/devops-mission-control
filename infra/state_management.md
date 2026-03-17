# Terraform State & File Hygiene

## 1. Dealing with State Files
| File | Meaning |
| :--- | :--- |
| `terraform.tfstate` | The "Source of Truth" for what is deployed. |
| `errored.tfstate` | A backup created when an update fails. |
| `.terraform/` | Hidden folder containing provider plugins (Always ignore this!). |

## 2. Cleaning up the Zip
If you want to keep the zip on the VM but remove it from Git tracking:
```bash
git rm --cached terraform_1.7.5_linux_amd64.zip
echo "terraform_1.7.5_linux_amd64.zip" >> ../.gitignore
git commit -m "chore: stop tracking terraform binary"


