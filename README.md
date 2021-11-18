# AutomatingContentManagement

This repository contains the ansible automation files for the Automating Content Management in Red Hat Satellite 6.9 with Red Hat Ansible Automation Platform Part 1 and Part 2 blog posts. The code is best used in conjunction with the blogs. 

## Automating Content Management in Red Hat Satellite 6.9 with Red Hat Ansible Automation Platform

The goal behind the blog and the code is to model a methodology for automating the periodic publishing of Content Views and Composite Content Views in Red Hat Satellite and testing that content before promoting. Together these should provide a good starting point. They describe:

- the content model for Satellite
- an introduction to the redhat.satellite ansible collection and how to use it
- creating ansible automation platform (AAP) execution environments
- creating AAP inventories, projects, job templates and workflow templates
- managing a workflow in AAP

## What is here

The main plays for automating Satellite are in the root of the repo. If you are using VMs for testing your content views and want to snapshot them you will find the ansible code under the vmware folder. The testcontent folder contains the ansible sample code to build the test systems. These are very simple as I don't know what your environment may look like, so these use generic examples - you are welcome to replace these ansible plays with something that is more suited to your environment. If you have any good ideas, pull requests are welcome.

In the Part 2 blog post, there is a chart that explains what goes where. It is copied below for reference


| Template Name  | Type | Inventory               | Playbook        | Credentials |
|----------------|------|-----------              |----------       |-------------|
| PublishContent | Run  | TheAutomationController | PublishOnly.yml | SSH:default Vault:satellite |
| PromoteToDev   | Run  | TheAutomationController | PromoteOnly.yml | SSH:default Vault:satellite |
| CreateTestEnv  | Run  | TheAutomationController | CreateHostFromHostGroup.yml | SSH:default Vault:satellite |
| CreateSnaps    | Run  | TheAutomationController | vmware/create_snapshot_vm.yml | SSH:default Vault:vmware  |
| BuildLAMP      | Run  | testinventory [LAMP]    |
| BuildJBoss     | Run  | testinventory [JBOSS]   |
| BuildWordPress | Run  | testinventory [WP]      |
| PromoteToQA    | Run  | TheAutomationController | PromoteOnly.yml | SSH:default Vault:satellite |
| RevertSnaps    | Run  | TheAutomationController | vmware/revert_snapshot_vm.yml | SSH:default Vault:satellite |
| MonthlyContent | Workflow | n/a | n/a | n/a |


If you have problems with the code functionality please create an issue so that we can work together to resolve it.


