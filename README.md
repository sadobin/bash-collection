# bash-collection
collection of useful scripts


## dirbruter.sh
Perform directory brute forcing. Check [SecList](https://github.com/danielmiessler/SecLists) which has good wordlists.

**Example:**
```
$ cat admin.txt 
admin
administrator
Admin
Administrator
$
$ dirbruter.sh example.com admin.txt 
[+] 404 -> example.com/admin
[+] 404 -> example.com/administrator
[+] 404 -> example.com/Admin
[+] 404 -> example.com/Administrator
```
