Import-Module oh-my-posh
oh-my-posh --init --shell pwsh --config ~\AppData\Local\Programs\oh-my-posh\themes\myconfig.omp.json | Invoke-Expression
Enable-PoshTooltips

# # PSReadLine
Import-Module PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar

# # Fzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# # Icons
Import-Module Terminal-Icons