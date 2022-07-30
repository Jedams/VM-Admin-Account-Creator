# VM-Admin-Account-Creator
Gets details from Azure VMs and then creates local admin accounts on each machine. 

1. AllVMDetails is used to create a CSV with VM Names and Resource group names. 

2. InvokeAZ uses this CSV to go through each listed machine to run the AccountCreation Script. 

3. Account Creation is a basic admin account creation script. 


    Hopefully this might work, and hopefully it doesn't break anything. I recommend testing this on something that cannot be broken before trying on something that can. :)
    