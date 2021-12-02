#! /bin/sh

# purge_rstudio_configs
#
# Purpose: 
# Refresh RStudio settings by moving per-user RStudio configurations into dated copies. 
#
# Usage:
# $ purge_rstudio_configs
#
# Details: 
# Renames "~/.local/share/rstudio", "~/.config/rstudio" and "~/.rstudio" by appending the current date as YYYY-mm-dd.  For example the "~/.config/rstudio" is renamed "~/.config/rstudio-2021-12-02". Any directory that doesn't exist is skipped.

today=`date -I`
dirs=("${HOME}/.local/share/rstudio" "${HOME}/.config/rstudio" "${HOME}/.rstudio")

for dir in "${dirs[@]}"
do
  if [ -d "${dir}" ]; then
    echo "moving ${dir} to ${dir}-${today}"
    mv ${dir} "${dir}-${today}"
  fi
done

echo "Do not forget that your RStudio settings (Tools > Global Options...) may have been reset to factory defaults"