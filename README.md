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

In the Part 2 blog post, there is an appendix that lists all of the assets that are required in AAP to create the workflow. This Appendix is reproduced on the wiki for this project.

If you have problems with the code functionality please create an issue so that we can work together to resolve it.


## What we are working on

Our next step will be to write code that:
- exports our content view and composite content view definitions 
- exports our provisioning definitions 
- recreates our content view and composite content views from exported definitions
- recreates our hostgroups, operating systems, media, etc.. from exported definitions

Much of the creation code already exists in repositories in this github and will be refined to work with the code provided here.
