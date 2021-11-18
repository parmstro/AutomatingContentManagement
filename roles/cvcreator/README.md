20210907
Paul Armstrong

This role is designed to create content views in a foreman or Satellite configuration from defined yaml configuration file.
In the role example you will find three recommended standard filters for each content view
- All RPMs without Errata
- All Streams without Errata
- All Errrata by Date (default for enddate variable value is the date of the ansible run) 

The example situation is that you are creating a series of content views for monthly publishing. You can manage the frequency of publishing by managing the scheduling frequency of the play, see the cvpublisher role. The play variable just specifies the enddate of the inclusion rule. You can create different jobs that include different variables for the list of content views and the target lifecycle environments.

Note that this role only creates the CV or CCV, it does not publish it.

