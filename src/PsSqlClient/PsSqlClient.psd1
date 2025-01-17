#
# Module manifest for module 'PsSqlClient'
#
# Generated by: Steffen Kampmann
#
# Generated on: 03.04.2022
#

@{

    # Script module or binary module file associated with this manifest.
    RootModule = 'PsSqlClient.psm1'

    # Version number of this module.
    ModuleVersion = '1.5.0'

    # Supported PSEditions
    # CompatiblePSEditions = @()

    # ID used to uniquely identify this module
    GUID = 'a62467b8-2412-40d4-ae42-c9c616bf20ec'

    # Author of this module
    Author = 'Steffen Kampmann'

    # Company or vendor of this module
    CompanyName = ''

    # Copyright statement for this module
    Copyright = '(c) 2020 Steffen Kampmann. Alle Rechte vorbehalten.'

    # Description of the functionality provided by this module
    Description = 'The PowerShell SQL Client module replaces the SQL Server utilities SQLCMD and BCP with native PowerShell commands.'

    # Minimum version of the PowerShell engine required by this module
    PowerShellVersion = '7.2.10'

    # Name of the PowerShell host required by this module
    # PowerShellHostName = ''

    # Minimum version of the PowerShell host required by this module
    # PowerShellHostVersion = ''

    # Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # DotNetFrameworkVersion = 'net6.0'

    # Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # ClrVersion = ''

    # Processor architecture (None, X86, Amd64) required by this module
    # ProcessorArchitecture = ''

    # Modules that must be imported into the global environment prior to importing this module
    # RequiredModules = @()

    # Assemblies that must be loaded prior to importing this module
    # RequiredAssemblies = @()

    # Script files (.ps1) that are run in the caller's environment prior to importing this module.
    # ScriptsToProcess = @()

    # Type files (.ps1xml) to be loaded when importing this module
    # TypesToProcess = @()

    # Format files (.ps1xml) to be loaded when importing this module
    # FormatsToProcess = @()

    # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
    NestedModules = @('PsSqlClient.dll')

    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    FunctionsToExport = '*'

    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport = 'Connect-Instance', 'Disconnect-Instance', 'Get-Value',
                   'Invoke-Command', 'Invoke-Procedure', 'Export-Table', 'Test-Connection'

    # Variables to export from this module
    VariablesToExport = '*'

    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport = '*'

    # DSC resources to export from this module
    # DscResourcesToExport = @()

    # List of all modules packaged with this module
    # ModuleList = @()

    # List of all files packaged with this module
    # FileList = @()

    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData = @{

        #IsPrerelease of this module
        IsPrerelease = 'True'

        #Category of this module
        Category = 'Databases'

        PSData = @{

            # Tags applied to this module. These help with module discovery in online galleries.
            Tags = 'sql','sqlserver','sqlclient'

            # A URL to the license for this module.
            LicenseUri = 'https://github.com/abbgrade/PsSqlClient/blob/main/LICENSE'

            # A URL to the main website for this project.
            ProjectUri = 'https://abbgrade.github.io/PsSqlClient/'

            # A URL to an icon representing this module.
            # IconUri = ''

            # ReleaseNotes of this module
            # ReleaseNotes = ''

            # Prerelease string of this module
            # Prerelease = ''

            # Flag to indicate whether the module requires explicit user acceptance for install/update/save
            # RequireLicenseAcceptance = $false

            # External dependent modules of this module
            # ExternalModuleDependencies = @()

        } # End of PSData hashtable

    } # End of PrivateData hashtable

    # HelpInfo URI of this module
    # HelpInfoURI = ''

    # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
    DefaultCommandPrefix = 'TSql'

    }

