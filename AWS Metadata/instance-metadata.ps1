$Reqd_key = Read-Host "Please enter the desired data key"
$uri = "http://169.254.169.254/metadata/instance?api-version=2021-02-01"
$response = Invoke-RestMethod -Method GET -NoProxy -Uri $uri -Headers @{"Metadata"="true"} | ConvertTo-Json -Depth 99 #Provides JSON formatted metadata
$jsonObj = $response | ConvertFrom-Json
$jsonObj.$Reqd_key #Retrieves the value of data key passed in the user input.