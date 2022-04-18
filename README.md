# kill-process.PID-
Killing a certain process using a specific port (windows users)

## step 1

* Open powershell or cmd or any terminal you have as administrator.

## step 2

* Search for the prcess which is using the port you want to clean.

```bash
netstat -ano | findstr :PORT
```

Replace PORT with the used port you want to clean

* Example : 
![alt text](https://github.com/ibrahim-mestadi/kill-process.PID-/blob/main/images/tst.png)

*The number 36416 is the PID of the process using the PORT= 8080*

## Step 3

* Kill it :)

```bash
TASKKILL /PID 36416 /F
```
![alt text](https://github.com/ibrahim-mestadi/kill-process.PID-/blob/main/images/pst.png)

## Step 4

No step 4 we already kill it : if you want to check re-use the port from an other service or repast the first filtring command :)   



