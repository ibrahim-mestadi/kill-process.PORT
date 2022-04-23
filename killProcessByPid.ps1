function cut {
    param(
        [Parameter(ValueFromPipeline = $True)] [string]$inputobject,
        [string]$delimiter = '\s+',
        [string[]]$field
    )
  
    process {
        if ($null -eq $field) { $inputobject -split $delimiter } else {
        ($inputobject -split $delimiter)[$field] 
        }
    }
}
function isNumeric ($Value) {
    return $Value -match "^[\d\.]+$"
}
function getPid($Port) {
    for ($i = 0; $i -lt 45; $i++) { 
        if (isNumeric $(netstat -ano | findstr 0.0.0.0:$Port | cut -f $i -d ' ' ) ) { 
            return $(netstat -ano | findstr 0.0.0.0:$Port | cut -f $i -d ' ' )
        } 
    }
    return $null
}
function killByPort($Port) {
    TASKKILL /PID $(getPid $Port) /F
}
  