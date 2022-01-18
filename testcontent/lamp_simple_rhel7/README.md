## Building and testing a simple LAMP stack
- Requires Ansible 2.9 or newer
- Expects CentOS/RHEL 7.x or 8.x host/s

This section is designed for use as a demonstration tool for Automated Content Management with Satellite and Ansible Automation Platform. The plays get called after initial content publishing from Satellite to test the new content and images.

e.g. "These playbooks test the deployment our company standard image with our release version of our standard LAMP Stack configuration."

The playbooks will configure MariaDB, apache, PHP-FPM and load a sample database of Global GNP data. Non-sensitive variables are stored in main.yml in the groups directory or in the all.yml under group_vars, sensitive variables are stored in an encrypted vault.yml file. You will need to create your own vault.yml files All vaulted variables are  preceded by vault_ and should be reproduced in your vault.yml file. See the vault.yml.sample file

This LAMP stack can be on a single node or multiple nodes. The inventory file
'hosts' defines the nodes in which the stacks should be configured.

        [webservers]
        localhost

        [dbservers]
        lampdb

For Automating Content Management, you will define your test host inventory on the controller node and use limits to target the appropriate nodes for jobs.

