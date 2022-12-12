function Prompt() {  
    $user = [System.Environment]::UserName
    $shst = [System.Net.Dns]::GetHostName() 
    $time = [System.DateTimeOffset]::Now.ToString("H:mm") 
    $path = (Get-Location).ToString()

    if ($path.Substring(0, 
        $(if ($home.Length -ge $path.Length) {
            $path.Length
        } else {
            $home.Length
        } )) -eq $home) {
        $lpath = "~" + $path.Substring($home.Length)
    } else { 
        $lpath = $path
    }

    "$user@$shst[$time]:{$lpath}% "
}

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
