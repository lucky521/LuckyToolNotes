
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/export/ll/llconda/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/export/ll/llconda/etc/profile.d/conda.sh" ]; then
        . "/export/ll/llconda/etc/profile.d/conda.sh"
    else
        export PATH="/export/ll/llconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

conda activate base
