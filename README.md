# OneDrive Disabler

The quick and easy way to remove OneDrive from File Explorer.
-----

Note: <b><i>Running as Administrator is a requirement, as this will modify the registry to remove OneDrive from File Explorer.</i></b>

This script is basically made to automate the process of removing OneDrive with just a button click.

Originally, I scripted most of this in msdos batch. It didn't support certain things I wanted to do entirely all within 1 batch file... 
at least, not enough to hold my interest! (I got bored with batch) 
So now I'm writing the Visual Basic script instead! 

ETA SoonTM

### Registry values to be modified:
```
32Bit:

[HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}]
    "System.IsPinnedToNameSpaceTree"=dword:00000000


OR


64Bit:
[HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}]
"System.IsPinnedToNameSpaceTree"=dword:00000000

[HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}]
"System.IsPinnedToNameSpaceTree"=dword:00000000



And this key for both architectures: 
[-HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{018D5C66-4533-4307-9B53-224DE2ED1FE6}\OneDrive]
```