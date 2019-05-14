Param(
	[Parameter(Mandatory=$True)]
	[ValidatePattern('[A-z0-9]{40}')]
	[string]$GitHash
)

$RuntimeVersion = "2.2.4"
$runtimeHashTag = "runtime-git-$($GitHash.Substring(0, 8))"
$runtimeTag = "runtime-$RuntimeVersion"
$SdkVersion = "2.2.203"
$hashTag = "sdk-git-$($GitHash.Substring(0, 8))"
$sdkTag = "sdk-$SdkVersion"
Write-Host "##vso[task.setvariable variable=SdkVersion]$SdkVersion"
Write-Host "##vso[task.setvariable variable=HashTag]$hashTag"
Write-Host "##vso[task.setvariable variable=SdkTag]$sdkTag"
Write-Host "##vso[task.setvariable variable=RuntimeVersion]$RuntimeVersion"
Write-Host "##vso[task.setvariable variable=RuntimeHashTag]$runtimeHashTag"
Write-Host "##vso[task.setvariable variable=RuntimeTag]$runtimeTag"