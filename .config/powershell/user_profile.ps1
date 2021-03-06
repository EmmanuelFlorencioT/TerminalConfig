#Prompt
Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt Paradox

#Load prompt config
function Get-ScriptDirectory { Split-Path $MyInvocation.ScriptName }
$PROMPT_CONFIG = Join-Path ( Get-ScriptDirectory ) 'emmft.omp.json'
oh-my-posh --init --shell pwsh --config $PROMPT_CONFIG | Invoke-Expression

#Icons
Import-Module -Name Terminal-Icons