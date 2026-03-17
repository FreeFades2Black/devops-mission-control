Attribute,Purpose
vpc_id,References the VPC we created earlier using aws_vpc.mission_control_vpc.id.
cidr_block,The IP range for this specific subnet.
map_public_ip_on_launch,Set to true for public-facing resources.


Shortcut,Action
Ctrl + U,"In the terminal, clears the line from the cursor to the beginning."
Ctrl + K,"In the terminal, clears the line from the cursor to the end."
`history,grep terraform`

---

### Reminder: Best Practices
You've made changes to the code—now is the perfect time to build that habit: **Push your branch to GitHub** so your progress on `feat-vpc-setup` is visible and backed up.

**Would you like to add a second subnet for high availability in a different Availability Zone, or shall we move on to creating the Internet Gateway so this VPC can actually talk to the web?**


