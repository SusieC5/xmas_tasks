<# 
Santa needs some weather information for his flights.
He's got a computer with him that runs powershell and is on some test flights at the moment.
He wants a script he can run to get the weather at a chosen location right now.
OpenWeatherMap.org offers an API which you should be able to use (once you've signed up for free for an API key). #>



#API key and city
$key = "361931c8542ea11f948b6bdb597cbefb"
$city = Read-Host "Please enter city" 

#getting latitude and longitude for getWeather function
$uri = "http://api.openweathermap.org/geo/1.0/direct?q=$city&limit=1&appid=$key"
$response = Invoke-RestMethod -uri $uri 
$lat = $response.lat
$lon = $response.lon

#get weather deteils from openweathermap.org
function getWeather() {   
    try{

        $uri = "https://api.openweathermap.org/data/3.0/onecall?lat=$lat&lon=$lon&exclude=minutely,daily&units=metric&appid=$key"
        $response = Invoke-RestMethod -uri $uri 
        Clear-Host
        Write-Host "City:               $city" -ForegroundColor Green
        Write-Host "Weather:            $($response.current.weather.main)" -ForegroundColor DarkBlue
        Write-Host "Current Temp:       $($response.current.temp)°C" -ForegroundColor Yellow
        Write-Host "Humidity:           $($response.current.humidity)%" -ForegroundColor Cyan
        Write-Host "Wind speed:         $($response.current.wind_speed) metre/sec" -ForegroundColor Cyan
        Write-Host "Wind Direction:     $($response.current.wind_deg) degrees"    -ForegroundColor Cyan
    } 
    #error message
    catch {
        Write-Host {"City not valid. Please try again."} -ForegroundColor Red
    }
}

getWeather
