## vmware machine management

This code is provided as part of the Automating Content Management repo. It's goal in this repo is to allow for the control of the virtual machines that are created to test content. We are using the code to manage snapshot creation and deletion as part of the content testing and promotion process. vmw_create_snapshot.yml and vmw_delete_snapshot.yml are the two plays called. The others are provided for your convenience to use as you extend and experiment with the workflows in Ansible Automation Platform.

All non-sensitive data is stored in vars/main.yml 
All sensitive data (e.g. vsphere user and password) are stored in var/vault.yml
You can override these values in the controller using extra vars. Vault credentials can be created to manage decryption of vault secrets.

The main.yml file defines site specific information that must be reviewed and edited/overridden in order for the sample code to work in your environment. Please review the main.yml variable file.