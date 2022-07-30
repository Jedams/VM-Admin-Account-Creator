
$myVMNameCSV = Import-Csv "./myVMNameCSV.csv"

foreach ($LINE in $myVMNameCSV) {
    Enable-AzVMPSRemoting -Name ($LINE.VmName) -ResourceGroupName ($LINE.ResourceGroupName)-Protocol https -OsType Windows

    Invoke-AzVMRunCommand -ResourceGroupName ($LINE.ResourceGroupName) -Name ($LINE.VmName) -CommandId 'RunPowerShellScript' -ScriptPath './AccountCreation.ps1'
}

