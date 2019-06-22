$GitHash = "localbld12345678123456781234567812345678"
Get-Content .\set-vars.ps1 -Tail 18 | Invoke-Expression
$buildSdk = "cmd /S /C `"set ARG_DOTNET_SDK_VERSION=$SdkVersion && docker build -t servercorebuild:localbld --build-arg ARG_DOTNET_SDK_VERSION=$SdkVersion .`""
$buildRuntime = "cmd /S /C `"set ARG_DOTNET_RUNTIME_VERSION=$RuntimeVersion && docker build -t servercoreruntime:localbld --build-arg ARG_DOTNET_RUNTIME_VERSION=$RuntimeVersion -f Dockerfile.runtime .`""
$buildAspNetCore = "cmd /S /C `"set ARG_ASPNETCORE_RUNTIME_VERSION=$RuntimeVersion && docker build -t servercoreaspnetcore:localbld --build-arg ARG_ASPNETCORE_RUNTIME_VERSION=$RuntimeVersion -f Dockerfile.aspnetcore .`""
iex $buildSdk
iex $buildRuntime
iex $buildAspNetCore
