Param(
	[Parameter(Mandatory=$True)]
	[ValidatePattern('[A-z0-9]{40}')]
	[string]$GitHash
)

$SdkVersion = "2.2.203"
$hashTag = "sdk-git-$($GitHash.Substring(0, 8))"
$sdkTag = "sdk-$SdkVersion"
Write-Host "##vso[task.setvariable variable=SdkVersion]$SdkVersion"
Write-Host "##vso[task.setvariable variable=HashTag]$hashTag"
Write-Host "##vso[task.setvariable variable=SdkTag]$sdkTag"
