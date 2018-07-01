# OneDrive Disabler

The quick and easy way to remove OneDrive from File Explorer.
-----

<b>Note: Running as Administrator is a requirement as this will modify the registry to remove OneDrive from File Explorer.</b>

This is a tool script I made, because I use a different cloud storage solution and OneDrive feels invasive against your will.
This is especially true for me as I reinstall or install windows often.


```
32Bit:

[HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}]
    "System.IsPinnedToNameSpaceTree"=dword:00000000


64Bit:
[HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}]
"System.IsPinnedToNameSpaceTree"=dword:00000000

[HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}]
"System.IsPinnedToNameSpaceTree"=dword:00000000


And this key for both architectures: 
[-HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{018D5C66-4533-4307-9B53-224DE2ED1FE6}\OneDrive]
```