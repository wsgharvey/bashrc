# slurm
alias qq='squeue -u ${LOGNAME} -o "%10i %5t %30j %20S %10M %10L %5C %5D %10m %100N"'
alias q='squeue -u ${LOGNAME}'
alias q-all='q | sed 1d'
alias q-running='q-all | grep " R " | wc -l'
alias q-queued='q-all | grep " PD " | wc -l'
alias q-neither='q-all | grep --invert-match -e " R " -e " PD " | wc -l'
alias qqq='echo "Running: $(q-running) Queued: $(q-queued) Neither: $(q-neither)"'

# Vi-mode
bindkey -v  # terminal
alias py='ipython --TerminalInteractiveShell.editing_mode=vi'  # ipython

# Use arrow keys for history navigation
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward
