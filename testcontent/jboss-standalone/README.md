## Standalone JBoss Deployment

- Requires Ansible 2.9 or newer
- Expects CentOS/RHEL 7 or 8 hosts

This section is designed for use as a demonstration tool for Automated Content Management with Satellite and Ansible Automation Platform. The plays get called after initial content publishing from Satellite to test the new content and images.

e.g. "These playbooks test the deployment our company standard image with our release version of our departmental standard JBoss 7.4 EAP content as a standalone server"

This group of plays and roles is designed to deploy any of the WildFly.org sample applications to a Standalone JBoss server implementation. Non-sensitive variables are stored in main.yml in the groups directory under group_vars. If you require sensitive variables, store them in an encrypted vault.yml file. You will need to create your own vault.yml files The standard used throughout is that vaulted variables are preceded by vault_ and should be reproduced in your vault.yml file and then referenced in the variable files controlling the plays. 

The code deploys a JBoss 7.4 standalone installation from RPM. This project requires that you have the rpm content hosted in a Satellite server and have a subscription to access them. Other deployment methods are possible with minor modifications.

### How to Use 

This project is included as part of a group of test applications for use with a Red Hat Ansible Automation Platform Controller as part of the Automating Content Management repo. The inventory is defined on the controller.

If running using a standalone control node or local system edit the inventory 
to specify the FQDNs of your target machines. Edit the group_vars/all file 
to specify the deployment variables. These are documented in the file.

You can specify any sample app directory from the jboss eap quickstarts, and
the play will deploy the app based on your parameters.

The main.yml play is used to deploy the JBoss Server and application:

	ansible-playbook -i inventory main.yml

When the playbook run completes, you should be able to see the JBoss
Application Server running on the ports you chose, on the target machines.

The play will output the URL of the application.

