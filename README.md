# kill-process.PID-
Killing a certain process using a specific port (windows users)

## step 1

* Open powershell or cmd or any terminal you have as administrator.

## step 2

* import the file killProcessByPid.ps1

```bash
Import-module .\killProcessByPid.ps1 -Force
```
## Step 3

* Enjoy by killing any process using the function killByPort:

```bash
killByPort $Port
```
### Example:
```bash
Import-module .\killProcessByPid.ps1 -Force
killByPort 3000
```