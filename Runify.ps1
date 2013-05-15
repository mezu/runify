Stop-Process -processname nunit-agent
$path =  $(get-location)
$nunit = "$path\runify\nunit\tools\nunit-color-console.exe"

$configFile = "$path\runify\runify.config"
$config = New-Object XML
$config.Load($configFile)

$watcher = New-Object System.IO.FileSystemWatcher
$watcher.Path = $path
$watcher.IncludeSubdirectories = $true
$watcher.EnableRaisingEvents = $true
$watcher.Filter = "*Tests.dll"

while($true){
    
    $change = $watcher.WaitForChanged([System.IO.WatcherChangeTypes]::Changed, 1000);
    if($change.TimedOut){
		continue;
	}
    
	foreach($assembly in $config.tests.assembly) 
	{
		$assemblyPath = $assembly.path
		$test = "$path\$assemblyPath"
	    & $nunit /labels /nologo /framework:"net-4.0" /xml:"$OutDir\Tests.nunit.xml" $test
	}
}