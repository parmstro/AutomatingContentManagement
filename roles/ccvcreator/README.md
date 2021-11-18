20210907
Paul Armstrong

This role is designed to create composite content views in a foreman or Satellite configuration from defined yaml configuration file.

The example situation is that you are creating a series of composite content views for monthly publishing. 

You can manage the frequency of publishing by managing the scheduling frequency of the play, see the cvpublisher role. The play variable just specifies the enddate of the inclusion rule. You can create different jobs that include different variables for the list of content views and the target lifecycle environments.

Note that this role only creates the CCV, it does not publish it.
Note that any references CVs in the CCV configuration must already exist or the run will fail
(usually you are calling the cvcreator role before this role)