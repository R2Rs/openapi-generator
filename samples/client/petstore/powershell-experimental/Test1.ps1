#Remove-Module -FullyQualifiedName @{ModuleName = "Org.OpenAPITools"; ModuleVersion = "0.0.1"}
#Remove-Module -FullyQualifiedName @{ModuleName = "PSOpenAPITools"; ModuleVersion = "0.0.1"}
Remove-Module -FullyQualifiedName @{ModuleName = "PSPetstore"; ModuleVersion = "0.1.2"}
#Remove-Module -FullyQualifiedName @{ModuleName = "PSPetstore"; ModuleVersion = "0.0"}

Import-Module -Name '.\src\PSPetstore\PSPetstore.psd1'
#Import-Module -Name '.\src\PSPetstore\PSPetstore.psd1' -Verbose
#Import-Module -Name '.\src\PSOpenAPITools'
#Import-Module -Name '.\src\Org.OpenAPITools'
#Import-Module -Name './src/Org.OpenAPITools'

#$DebugPreference = 'Continue'

$Id = 38360381209
try {
    $Result2 = Get-PSPetById -petId ($Id) 
    Write-Host "No exception and result2 is $($Result2)"
} catch {
    if ($null -eq $Result2) {
        Write-Host "Result2 is null: $($Result2)"
    } else {
        Write-Host "Result2 is not null: $($Result2)"
    }
}

try {
    $Result3 = Get-PSPetById -petId ($Id) -WithHttpInfo
    Write-Host "No exception and result3 is $($Result3)"
    Write-Host $Result3["Headers"]["Content-Type"]
    Write-Host $Result3["Response"]
} catch {
    if ($null -eq $Result3) {
        Write-Host "Result3 is null: $($Result3)"
    } else {
        Write-Host "Result3 is not null: $($Result3)"
    }
}

#$Result = Add-PSPet -Pet $pet -ReturnType "application/xml"
#Write-Host "Before exit $($Result2.GetType())"

#$result | Write-Host

#$result | Select-Object -Property "photoUrls" | ConvertTo-Json | Write-Host
#Write-Host "result =" + $result.photoUrls


#$pet2 = Initialize-PSPet -Id 20129 -Name '2foo' -Category (
#    Initialize-PSCategory -Id 20129 -Name '2bar'
#) -PhotoUrls @(
#    'http://example.com/2foo',
#    'http://example.com/2bar'
#) -Tags (
#    Initialize-PSTag -Id 3 -Name 'baz'
#) -Status Available
#
##Write-Host $pet
#$Result = Add-PSPet -Pet $pet2
#
#$Result = Find-PSPetsByTags 'baz'
#Write-Host $Result.GetType().Name
#Write-Host $Result

#$Result = Invoke-PetApiUpdatePetWithForm -petId $Id -Name "PowerShell Update" -Status "Pending"

#$file = Get-Item "./plus.gif"
##$Result = Invoke-PetApiUploadFile -petId $Id -additionalMetadata "Additional data" -File $file
#
#Set-PSConfiguration -Username "test_username" -Password "test_password"
#
#$conf = Get-PSConfiguration
#
#$conf | ConvertTo-Json | Write-Host

