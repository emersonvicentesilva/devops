netstat -ano | Select-String "ESTABLISHED" | ForEach-Object {
    $pid = ($_ -split '\s+')[4]
    Get-WmiObject Win32_Process -Filter "ProcessId = $pid" | Select-Object Name, ProcessId, ExecutablePath, CommandLine
}