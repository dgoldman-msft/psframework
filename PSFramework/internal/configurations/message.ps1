﻿
Set-PSFConfig -Module PSFramework -Name 'Message.Info.Minimum' -Value 1 -Initialize -Validation "integer0to9" -Handler { [PSFramework.Message.MessageHost]::MinimumInformation = $args[0] } -Description "The minimum required message level for messages that will be shown to the user."
Set-PSFConfig -Module PSFramework -Name 'Message.Info.Maximum' -Value 3 -Initialize -Validation "integer0to9" -Handler { [PSFramework.Message.MessageHost]::MaximumInformation = $args[0] } -Description "The maximum message level to still display to the user directly."
Set-PSFConfig -Module PSFramework -Name 'Message.Verbose.Minimum' -Value 4 -Initialize -Validation "integer0to9" -Handler { [PSFramework.Message.MessageHost]::MinimumVerbose = $args[0] } -Description "The minimum required message level where verbose information is written."
Set-PSFConfig -Module PSFramework -Name 'Message.Verbose.Maximum' -Value 6 -Initialize -Validation "integer0to9" -Handler { [PSFramework.Message.MessageHost]::MaximumVerbose = $args[0] } -Description "The maximum message level where verbose information is still written."
Set-PSFConfig -Module PSFramework -Name 'Message.Debug.Minimum' -Value 1 -Initialize -Validation "integer0to9" -Handler { [PSFramework.Message.MessageHost]::MinimumDebug = $args[0] } -Description "The minimum required message level where debug information is written."
Set-PSFConfig -Module PSFramework -Name 'Message.Debug.Maximum' -Value 9 -Initialize -Validation "integer0to9" -Handler { [PSFramework.Message.MessageHost]::MaximumDebug = $args[0] } -Description "The maximum message level where debug information is still written."
Set-PSFConfig -Module PSFramework -Name 'Message.Info.Color' -Value 'Cyan' -Initialize -Validation "consolecolor" -Handler { [PSFramework.Message.MessageHost]::InfoColor = $args[0] } -Description "The color to use when writing text to the screen on PowerShell."
Set-PSFConfig -Module PSFramework -Name 'Message.Info.Color.Emphasis' -Value 'green' -Initialize -Validation "consolecolor" -Handler { [PSFramework.Message.MessageHost]::InfoColorEmphasis = $args[0] } -Description "The color to use when emphasizing written text to the screen on PowerShell."
Set-PSFConfig -Module PSFramework -Name 'Message.Info.Color.Subtle' -Value 'gray' -Initialize -Validation "consolecolor" -Handler { [PSFramework.Message.MessageHost]::InfoColorSubtle = $args[0] } -Description "The color to use when making writing text to the screen on PowerShell appear subtle."
Set-PSFConfig -Module PSFramework -Name 'Message.DeveloperColor' -Value 'Gray' -Initialize -Validation "consolecolor" -Handler { [PSFramework.Message.MessageHost]::DeveloperColor = $args[0] } -Description "The color to use when writing text with developer specific additional information to the screen on PowerShell."
Set-PSFConfig -Module PSFramework -Name 'Message.ConsoleOutput.Disable' -Value $false -Initialize -Validation "bool" -Handler { [PSFramework.Message.MessageHost]::DisableVerbosity = $args[0] } -Description "Global toggle that allows disabling all regular messages to screen. Messages from '-Verbose' and '-Debug' are unaffected"
Set-PSFConfig -Module PSFramework -Name 'Message.Transform.ErrorQueueSize' -Value 512 -Initialize -Validation "integerpositive" -Handler { [PSFramework.Message.MessageHost]::TransformErrorQueueSize = $args[0] } -Description "The size of the queue for transformation errors. May be useful for advanced development, but can be ignored usually."
Set-PSFConfig -Module PSFramework -Name 'Message.NestedLevel.Decrement' -Value 0 -Initialize -Validation "integer0to9" -Handler { [PSFramework.Message.MessageHost]::NestedLevelDecrement = $args[0] } -Description "How many levels should be reduced per callstack depth. This makes commands less verbose, the more nested they are called"
Set-PSFConfig -Module PSFramework -Name 'Developer.Mode.Enable' -Value $false -Initialize -Validation "bool" -Handler { [PSFramework.Message.MessageHost]::DeveloperMode = $args[0] } -Description "Developermode enables advanced logging and verbosity features. There is little benefit for enabling this as a regular user. but developers can use it to more easily troubleshoot issues."
Set-PSFConfig -Module PSFramework -Name 'Message.Style.Breadcrumbs' -Value $false -Initialize -Validation "bool" -Handler { [PSFramework.Message.MessageHost]::EnableMessageBreadcrumbs = $args[0] } -Description "Controls how messages are displayed. Enables Breadcrumb display, showing the entire callstack. Takes precedence over command name display."
Set-PSFConfig -Module PSFramework -Name 'Message.Style.FunctionName' -Value $true -Initialize -Validation "bool" -Handler { [PSFramework.Message.MessageHost]::EnableMessageDisplayCommand = $args[0] } -Description "Controls how messages are displayed. Enables command name, showing the name of the writing command. Is overwritten by enabling breadcrumbs."
Set-PSFConfig -Module PSFramework -Name 'Message.Style.Timestamp' -Value $true -Initialize -Validation "bool" -Handler { [PSFramework.Message.MessageHost]::EnableMessageTimestamp = $args[0] } -Description "Controls how messages are displayed. Enables timestamp display, including a timestamp in each message."

Set-PSFConfig -Module PSFramework -Name 'Message.Style.Prefix' -Value $false -Initialize -Validation "bool" -Handler { [PSFramework.Message.MessageHost]::EnableMessagePrefix = $args[0] } -Description "Controls how messages are displayed. Enables message prefix display, including a prefix in each message."
Set-PSFConfig -Module PSFramework -Name 'Message.Style.Prefix.Error' -Value "##vso[task.logissue type=error;]" -Initialize -Validation "string" -Handler { [PSFramework.Message.MessageHost]::PrefixValueError = $args[0] } -Description "Prefix value to use when the level is Warning and the tag 'error' is supplied."
Set-PSFConfig -Module PSFramework -Name 'Message.Style.Prefix.Warning' -Value "##vso[task.logissue type=warning;]" -Initialize -Validation "string" -Handler { [PSFramework.Message.MessageHost]::PrefixValueWarning = $args[0] } -Description "Prefix value to use when the level is Warning."
Set-PSFConfig -Module PSFramework -Name 'Message.Style.Prefix.Verbose' -Value "##[debug]" -Initialize -Validation "string" -Handler { [PSFramework.Message.MessageHost]::PrefixValueVerbose = $args[0] } -Description "Prefix value to use when the level is one of the three Verbose levels."
Set-PSFConfig -Module PSFramework -Name 'Message.Style.Prefix.Host' -Value "" -Initialize -Validation "string" -Handler { [PSFramework.Message.MessageHost]::PrefixValueHost = $args[0] } -Description "Prefix value to use when the level is Host."
Set-PSFConfig -Module PSFramework -Name 'Message.Style.Prefix.Significant' -Value "##[section]" -Initialize -Validation "string" -Handler { [PSFramework.Message.MessageHost]::PrefixValueSignificant = $args[0] } -Description "Prefix value to use when the level is significant or critical."
