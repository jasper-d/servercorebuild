Param(
	[Parameter(Mandatory=$True)]
	[ValidatePattern('[A-z0-9]{40}')]
	[string]$GitHash
)

$SdkVersion = "3.1.100"
$hashTag = "sdk-git-$($GitHash.Substring(0, 8))"
$sdkTag = "sdk-$SdkVersion"
$RuntimeVersion = "3.1.0"
$runtimeHashTag = "runtime-git-$($GitHash.Substring(0, 8))"
$runtimeTag = "runtime-$RuntimeVersion"
$aspNetCoreVersion = "3.1.0"
$aspNetCoreHashTag = "aspnetcore-git-$($GitHash.Substring(0, 8))"
$aspNetCoreTag = "aspnetcore-$RuntimeVersion"
Write-Host "##vso[task.setvariable variable=SdkVersion]$SdkVersion"
Write-Host "##vso[task.setvariable variable=HashTag]$hashTag"
Write-Host "##vso[task.setvariable variable=SdkTag]$sdkTag"
Write-Host "##vso[task.setvariable variable=RuntimeVersion]$RuntimeVersion"
Write-Host "##vso[task.setvariable variable=RuntimeHashTag]$runtimeHashTag"
Write-Host "##vso[task.setvariable variable=RuntimeTag]$runtimeTag"
Write-Host "##vso[task.setvariable variable=AspNetCoreVersion]$aspNetCoreVersion"
Write-Host "##vso[task.setvariable variable=AspNetCoreHashTag]$aspNetCoreHashTag"
Write-Host "##vso[task.setvariable variable=AspNetCoreTag]$aspNetCoreTag"
