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

## verb-tamper.sh
Used for testing numerous HTTP methods on the server.

**Example:**
```
$ verb-tamper.sh example.com
[+] 200 -> GET: example.com
[+] 411 -> POST: example.com
[+] 200 -> HEAD: example.com
[+] 504 -> PUT: example.com
[+] 200 -> OPTIONS: example.com
[+] 404 -> CONNECT: example.com
[+] 405 -> TRACE: example.com
[+] 405 -> DELETE: example.com
[+] 405 -> PATCH: example.com
```
