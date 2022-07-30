# VM-Admin-Account-Creator
Gets details from Azure VMs and then creates local admin accounts on each machine. 


1. AllVMDetails is used to create a CSV with VM Names and Resource group names. Subcription ID will need to be added top of this file. In future could prompt user for input but this seemed easier currently.

CSV is assumed to be created in the same directory as this file and the name used in InvokeCSV.

2. InvokeAZ uses this CSV to go through each listed machine to run the AccountCreation Script. 

3. Account Creation is a basic admin account creation script. Account Creation will require editing the values for user name and password. Again we can change this to prompt user for input but this seems easier.


    Hopefully this might work, and hopefully it doesn't break anything. I recommend testing this on something that cannot be broken before trying on something that can. :)
