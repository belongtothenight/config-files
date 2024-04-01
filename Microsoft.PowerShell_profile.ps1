#Functions
function whereis ($command) {
	Get-Command -Name $command -ErrorAction SilentlyContinue |
	Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
function Invoke-Exa {
	Invoke-Expression "E:/GitHub/exa/target/debug/exa.exe $args"
}

#Prompt
#oh-my-posh init pwsh --config 'C:\Users\dachu\AppData\Local\Programs\oh-my-posh\themes\jandedobbeleer.omp.json' | Invoke-Expression
oh-my-posh init pwsh --config 'C:\Users\dachu\AppData\Local\Programs\oh-my-posh\themes\jblab_2021.omp.json' | Invoke-Expression
#oh-my-posh init pwsh --config 'C:\Users\dachu\AppData\Local\Programs\oh-my-posh\themes\sorin.omp.json' | Invoke-Expression

#PSReadLineOption
Import-Module PSReadLine
#Set-PSReadlineKeyHandler -Key Tab -Function Complete
Set-PSReadlineOption -PredictionViewStyle ListView

#Terminal Icons
Import-Module Terminal-Icons

#Aliases
Set-Alias tt tree
Set-Alias ll ls
Set-Alias g git
Set-Alias vim nvim
Set-Alias exa Invoke-Exa
Set-Alias ls Invoke-Exa
