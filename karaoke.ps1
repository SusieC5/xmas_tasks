<# Santa wants a karaoke machine
His favorite song is Twelve Days of Christmas
His computer is really old and doesn't have much space for computer programs
Write a script that can show the lyrics of the twelve days of Christmas, without actually writing the whole song out by hand.
and if you can sneak an emoji in there too, that'd be lovely.#>

#make array for 12 items in the song
$gifts = @("a partridge in a pear tree", "Two turtle-doves", "Three French hens", "Four calling birds", "Five golden rings", "Six geese a-laying", "Seven swans a-swimming", "Eight maids a milking", "Nine ladies dancing", "Ten lods a-leaping", "Twelve drummers drumming")
$count = $gifts.Count
   
#listing previous gifts
function pastgifts() {
    for ($gift=$gift; $gift -gt 0; $gift--){
        $gifts[$gift] 
        Start-Sleep -seconds 2
        
}
}

#display lyrics - list gift each day + previous day's gifts
function song() {
for ($gift=0; $gift -lt $count; $gift++){
    if ($gift -eq 0){
        Write-Host "On the 1st day of Christmas my true love gave to me" 
        Start-Sleep -seconds 2
        $gifts[$gift]
         
    }

#display 'nd', 'rd' or 'th' for days
    elseif ($gifts -gt 0) {
        $number = $gift + 1
    if ($number -eq 2) {
        $number = "$number" + "nd"
    }
    if ($number -eq 3) {
        $number = "$number" + "rd"
    }
    elseif ($number -ge 4) {
        $number = "$number" + "th"
    }

#displying lyrics
        Write-Host "On the $number day of Christmas my true love gave to me" 
        Start-Sleep -seconds 2
        pastgifts 
        Write-Host "and $($gifts[0])" 
        
}
start-sleep -Seconds 2
clear-host
}
}



Clear-Host
Write-Host "Twelve Days of Christmas" -ForegroundColor Cyan
Write-Host -"by Bing Crosby and The Andrews Sisters" 
start-sleep -seconds 2
Clear-Host 
song
