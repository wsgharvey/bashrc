# Use arrow keys for history navigation
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# slurm
alias qq='squeue -u ${LOGNAME} -o "%10i %5t %30j %20S %10M %10L %5C %5D %10m %100N"'
alias q='squeue -u ${LOGNAME}'
alias q-all='q | sed 1d'
alias q-running='q-all | grep "\ R\ " | wc -l'
alias q-queued='q-all | grep "\ PD\ " | wc -l'
alias q-neither='q-all | grep --invert-match -e "\ R\ " -e "\ PD\ " | wc -l'
alias qqq='echo "Running: $(q-running) Queued: $(q-queued)" Neither: $(q-neither)'

# Vi-mode
set -o vi  # terminal
alias py='ipython --TerminalInteractiveShell.editing_mode=vi'  # ipython
