[System.Collections.ArrayList]$presents = @()

#box length
function box () {
    $length = $present.length + 6
    $paper = "*" 
    $paperlength = $paper*$length
    Write-Host "$paperlength" -ForegroundColor Red
}

#wrapping the gifts
function wrapgifts () {
    Clear-Host
    foreach ($present in $presents) {
        box
        write-host "** $present **" -ForegroundColor Red
        box
        '' 
    }
    Write-Host "Rememeber not to open until Boxing Day! Merry Christmas!" -ForegroundColor Cyan
        ''
}
    
#more gifts to add to list
function more($moregifts) {
    Clear-Host
    $morewrapping = Read-Host "Please enter next gift or 'stop' to end"
    while ($morewrapping -notin "stop") {
    $null = $presents.Add("$morewrapping")
    Clear-Host
    $morewrapping = Read-Host "Please enter next gift or 'stop' to end"
}
    switch ($morewrapping) {
        stop  {$null = $presents.Remove("stop")
    wrapgifts}
}
}

Clear-Host
$gifts = Read-Host "Please enter the gift you would like wrapped"
$null = $presents.Add("$gifts")
Clear-Host
$moregifts = Read-Host "Do you have more gifts to wrap? Y/N"
if ($moregifts -eq "y"){
    more
}
elseif ($moregifts -eq 'n'){
    wrapgifts 
}
