## WordPress+Nginx+PHP-FPM+MariaDB Deployment

- Requires Ansible 2.9 or newer
- Expects CentOS/RHEL 7.x or 8.x host/s

This section is designed for use as a demonstration tool for Automated Content Management with Satellite and Ansible Automation Platform. The plays get called after initial content publishing from Satellite to test the new content and images.

e.g. "These playbooks smoke test the deployment our company standard image with our release version of our departmental blogging platform WordPress using our standard Nginx web server and PHP-FPM process manager."

The plays can be configured to generate errors so that Ansible workflow templates can be demonstrated. See the variables file.

The playbooks will configure MariaDB, WordPress, Nginx, and PHP-FPM. When the run is complete, you can hit access server to begin the WordPress configuration. Group direcotries are used. Non-sensitive variables are stored in main.yml in the groups directory under group_vars, sensitive variables are stored in an  encrypted vault.yml file. You will need to create your own vault.yml files All vaulted variables are  preceded by vault_ and should be reproduced in your vault.yml file.
