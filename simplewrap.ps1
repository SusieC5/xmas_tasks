$gifts = @("bear","toy car","robot","chocolate","socks")
[System.Collections.ArrayList]$wrappedgifts = @()

foreach ($gift in $gifts){
    $length = $gift.Length
    $boxlength = $length + 6
    $topbottom = "*" * $boxlength
    $wrapped = "$topbottom`n** $gift **`n$topbottom`n"
    $null = $wrappedgifts.Add("$wrapped")
}

$wrappedgifts