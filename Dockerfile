FROM mcr.microsoft.com/windows/servercore:ltsc2019 AS servercorebuild
# Install dotnet-sdk
ARG ARG_DOTNET_SDK_VERSION
RUN powershell iwr 'https://dot.net/v1/dotnet-install.ps1' -OutFile './dotnet-install.ps1' && \
    powershell ./dotnet-install.ps1 -InstallDir 'C:\Program Files\dotnet' -Channel Current -Version %ARG_DOTNET_SDK_VERSION% && \
    del .\dotnet-install.ps1 && \
    setx /M PATH "%PATH%;C:\Program Files\dotnet;C:\dotnet-tools" && \
    setx /M DOTNET_CLI_TELEMETRY_OPTOUT "true" && \
    setx /M DOTNET_SKIP_FIRST_TIME_EXPERIENCE "true" && \
    setx /M DOTNET_RUNNING_IN_CONTAINER "true" && \
    setx /M ASPNETCORE_URLS "http://+:80" && \
    setx /M DOTNET_USE_POLLING_FILE_WATCHER "true" && \
    setx /M NUGET_XMLDOC_MODE "skip" && \
    setx /M DOTNET_SDK_VERSION %ARG_DOTNET_SDK_VERSION% && \
    setx /M DOTNET_TOOLS_PATH "C:\dotnet-tools" && \
    "C:/Program Files/dotnet/dotnet.exe" --info
