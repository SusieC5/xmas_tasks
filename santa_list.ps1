<# Christmas Challenge 20th Dec - Everyone knows Santa has a naughty list, but know one knows how its implemented. 
- He's decided to modernise.He'd like a script that asks for a name and a number (between 1 and 5) and puts them in an array. 
- Then when Santa/Elf types a special keyword, the data in the array is displayed. 
- Bonus points if you can get it to output to a HTML page (which could get hosted on Santa's web server  #>

#array
$list =@()

#ask user to enter name and number and add to array until keyword 'Christmas' is entered
do {
    $name = Read-Host "Please enter name or keyword 'Christmas' to display list"
    if ($name -ne "Christmas") {
        $number = Read-Host "Please enter number"
        $entry = @{Name = $name; Number = $number}
        $list += $entry
        }
    }

until ($name -eq "Christmas")

#content on webpage
$htmlParams = @{
    Head = "<h1>Santa's List</h1><br>"
    PreContent = "<p><h2>Who is on the list this year? Find out here:</h2></p><br>"
    
}

[PSCustomObject]$list | ConvertTo-Html -As Table @htmlParams -CssUri "SantaStyle.css" | Out-File -FilePath ./SantaList.html
Invoke-Expression ./SantaList.html

