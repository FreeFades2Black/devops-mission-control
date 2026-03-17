# AWS Routing & IGW Cheat Sheet

## 1. Components
| Resource | Purpose |
| :--- | :--- |
| `aws_internet_gateway` | The "Front Door" of the VPC for internet traffic. |
| `aws_route_table` | The "Rules" for where traffic goes. |
| `0.0.0.0/0` | The CIDR shorthand for "The entire Internet." |

## 2. Fast Navigation (Vagrant/Ubuntu)
| Shortcut | Action |
| :--- | :--- |
| `Ctrl + Z` | Suspend `nano` to run a command (type `fg` to go back). |
| `tail -n 20 main.tf` | View the last 20 lines of your file quickly. |

## 3. GitHub Habit
* **Stage:** `git add main.tf`
* **Commit:** `git commit -m "feat: add igw and public route table"`
* **Push:** `git push origin feat-vpc-setup`


