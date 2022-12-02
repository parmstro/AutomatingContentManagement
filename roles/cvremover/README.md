20221104
Paul Armstrong

This role is designed to remove the content views from a foreman or Satellite configuration defined in a yaml configuration file.
The role accepts an integer that defines the number of views to maintain.
If the role encounters content views that have hosts assigned to them, the roll will stop removing content views. Log a warning and exit. 
You can override this default behaviour by specifying true for "skip_in_use_cvs"

The content view can be a composite content view or a content view. Use separate lists and call them in turn. Please see the example file.

