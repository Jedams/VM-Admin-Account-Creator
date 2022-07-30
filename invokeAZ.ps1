
$myVMNameCSV = Import-Csv "./myVMNameCSV.csv"

foreach ($LINE in $myVMNameCSV) {
    Enable-AzVMPSRemoting -Name ($LINE.VMName) -ResourceGroupName ($LINE.ResourceGroup)-Protocol https -OsType Windows

    Invoke-AzVMRunCommand -ResourceGroupName ($LINE.ResourceGroup) -Name ($LINE.VMName) -CommandId 'RunPowerShellScript' -ScriptPath './AccountCreation.ps1'
}

