<!-- region Generated -->
# Azs.ContainerService.Admin
This directory contains the PowerShell module for the ContainerServiceAdmin service.

---
## Status
[![Azs.ContainerService.Admin](https://img.shields.io/powershellgallery/v/Azs.ContainerService.Admin.svg?style=flat-square&label=Azs.ContainerService.Admin "Azs.ContainerService.Admin")](https://www.powershellgallery.com/packages/Azs.ContainerService.Admin/)

## Info
- Modifiable: yes
- Generated: all
- Committed: yes
- Packaged: yes

---
## Detail
This module was primarily generated via [AutoRest](https://github.com/Azure/autorest) using the [PowerShell](https://github.com/Azure/autorest.powershell) extension.

## Module Requirements
- [Az.Accounts module](https://www.powershellgallery.com/packages/Az.Accounts/), version 2.2.8

## Authentication
AutoRest does not generate authentication code for the module. Authentication is handled via Az.Accounts by altering the HTTP payload before it is sent.

## Development
For information on how to develop for `Azs.ContainerService.Admin`, see [how-to.md](how-to.md).
<!-- endregion -->

## Generation Requirements
Use of the beta version of `autorest.powershell` generator requires the following:
- [NodeJS LTS](https://nodejs.org) (10.15.x LTS preferred)
  - **Note**: It *will not work* with Node < 10.x. Using 11.x builds may cause issues as they may introduce instability or breaking changes.
> If you want an easy way to install and update Node, [NVS - Node Version Switcher](../nodejs/installing-via-nvs.md) or [NVM - Node Version Manager](../nodejs/installing-via-nvm.md) is recommended.
- [AutoRest](https://aka.ms/autorest) v3 beta <br>`npm install -g autorest@beta`<br>&nbsp;
- PowerShell 6.0 or greater
  - If you don't have it installed, you can use the cross-platform npm package <br>`npm install -g pwsh`<br>&nbsp;
- .NET Core SDK 2.0 or greater
  - If you don't have it installed, you can use the cross-platform npm package <br>`npm install -g dotnet-sdk-2.2`<br>&nbsp;

## Run Generation
In this directory, run AutoRest:
> `autorest`

---
### AutoRest Configuration
> see https://aka.ms/autorest

``` yaml
require:
  - $(this-folder)/../readme.azurestack.md
  - $(repo)/specification/azsadmin/resource-manager/containerservice/readme.azsautogen.md

metadata:
  description: 'Microsoft AzureStack PowerShell: ContainerService Admin cmdlets'

### PSD1 metadata changes
subject-prefix: ''
module-version: 0.1.0
service-name: ContainerServiceAdmin

### File Renames
### IMPORTANT - Note that the following settings are case sensitive ###
module-name: Azs.ContainerService.Admin
csproj: Azs.ContainerService.Admin.csproj
psd1: Azs.ContainerService.Admin.psd1
psm1: Azs.ContainerService.Admin.psm1
```

### Parameter default values
``` yaml
directive:

# Add release notes
  - from: Azs.ContainerService.Admin.nuspec
    where: $
    transform: $ = $.replace('<releaseNotes></releaseNotes>', '<releaseNotes>AzureStack Hub Admin module generated with https://github.com/Azure/autorest.powershell.</releaseNotes>');

# Add Az.Accounts/Az.Resources as dependencies
  - from: Azs.ContainerService.Admin.nuspec
    where: $
    transform: $ = $.replace('<dependency id="Az.Accounts" version="2.2.3" />', '<dependency id="Az.Accounts" version="[2.2.8]" />\n      <dependency id="Az.Resources" version="[0.12.0]" />');

# PSD1 changes for ReleaseNotes
  - from: source-file-csharp
    where: $
    transform: $ = $.replace('sb.AppendLine\(\$@\"\{Indent\}\{Indent\}\{Indent\}ReleaseNotes = \'\'\"\);', 'sb.AppendLine\(\$@\"\{Indent\}\{Indent\}\{Indent\}ReleaseNotes = \'AzureStack Hub Admin module generated with https://github.com/Azure/autorest.powershell\'\"\);' );
```
