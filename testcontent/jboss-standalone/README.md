## Standalone JBoss Deployment

- Requires Ansible 2.9 or newer
- Expects CentOS/RHEL 7 or 8 hosts

The purpose of this fork is specifically to provide sample applications for 
a demonstration environment implementing a wide variety of Red Hat software
in integrated deployment.

This group of plays and roles is designed to deploy any of the WildFly.org sample
applications to a Standalone JBoss server implementation.

The role currently deploys a JBoss 7.3 installation from RPM. This requires
that you have the rpm content hosted locally in repositories or are using the Red Hat
repos on cdn.redhat.com or a Satellite server and have a subscription to access them.
Other deployment methods are possible with minor modifications.

** How to Use 

These plays can be used on a standalone ansible control node or integrated with 
Red Hat Ansible Automation Platform (Tower). 

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

