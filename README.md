# OneDrive Disabler

##The quick and easy way

This is a tool script I made, because I use a different cloud storage solution and OneDrive feels invasive against your will.
This is especially true for me if I reinstall or install windows -often-.

This batch file will ask you for permissions first before running, if you haven't already ran it as admin.

You must run it as an admin simply because the following must be modified:

  *[HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}]
    *"System.IsPinnedToNameSpaceTree"=dword:00000000