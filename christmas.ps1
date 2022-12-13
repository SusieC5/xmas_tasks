function gift() {

    write-host "    /\    /\ "
    write-host "    \ \  / / "
    write-host "   __\_\/_/___"
    write-host "  |____| |____|"
    write-host "  |____   ____|"
    write-host "  |    | |    |"
    write-host "  |____|_|____|"
} 

#Intro
Write-host ""
Write-host "Let's play a game. Answer a few questions and get a Christmas prize at the end!"

#first question
Write-host ""
$first = Read-Host "What did my true love give me on the first day of Christmas? Was it a partridge or cartrige?"

while ($first -notin "partridge") {
    $first = Read-Host "Wrong. Try again!"
    
    switch ($first) {
        partridge {break}
}
}

#second question
Write-host ""
Write-host "Well done!"
$second = Read-Host "What kind of doves did I get on the second day? Was it turtle or mutant?"

while ($second -notin "turtle") {
    $second = Read-Host "Wrong! Try again."
    
    switch ($second) {
        turtle {break}
    }
}

#third question
Write-Host ""
Write-Host "This could go on a while. Let's skip a few days."
Write-Host "On the fifth day of Christmas my true love gave to me five gold rings."
$third = Read-Host "Who had the One Ring? Freddo or Frodo?"

while ($third -notin "Frodo") {
    $third = Read-Host "Wrong. Try again! Was it Freddo or Frodo?"
    
    switch ($third) {
        Frodo {break}
    }
} 

#last part
Write-Host ""
Write-Host "I think that's enough questions. Here's your present!"
gift
Write-Host ""
$surprise = Read-Host "Would you like to open your gift? Please enter Y or N"

If ($surprise -eq "y") {
    start https://www.youtube.com/watch?v=PxCbCmym4E0
} 

else {
    Write-Host "Guess you are saving it for Boxing Day. Merry Christmas!"
}



