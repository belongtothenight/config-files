# Check original source at: https://www.youtube.com/watch?v=fviSilPKIhs

# Usage: Copy the file to "$PROFILE" or "C:\Users\xxx\Documents\PowerShell\"

#Aliases
Set-Alias tt tree
Set-Alias ll ls
Set-Alias g git
Set-Alias vim nvim

#Prompt
oh-my-posh init pwsh --config 'C:\Users\dachu\AppData\Local\Programs\oh-my-posh\themes\jandedobbeleer.omp.json' | Invoke-Expression

#PSReadLineOption
Import-Module PSReadLine
# Set-PSReadlineKeyHandler -Key Tab -Function Complete
Set-PSReadlineOption -PredictionViewStyle ListView

#Terminal Icons
Import-Module Terminal-Icons

#Functions
function whereis ($command) {
	Get-Command -Name $command -ErrorAction SilentlyContinue |
	Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

# Exa
# To deploy: head to <https://github.com/ogham/exa#development-------->
# 1. Clone the repo locally
# 2. Run `cargo build`
# 3. Run `cargo test`
# 4. Copy executable filepath
# 5. Paste filepath into the function below
function Invoke-Exa {
	Invoke-Expression "E:/GitHub/exa/target/debug/exa.exe $args"
}

Set-Alias exa Invoke-Exa
