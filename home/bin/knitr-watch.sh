#!/bin/bash
# Source: https://joshldavis.com/2014/04/12/beginners-tutorial-for-knitr/

FILE="${1}"

if [[ $# != 1 ]]; then
    echo "Usage: knitr <file>"
    exit
fi

if [[ ! -f "${FILE}" ]]; then
    echo "Uh oh."
    echo "It looks like the file you provided me doesn't exist: ${FILE}"
    exit
fi

hash kicker 2> /dev/null || {
    echo "Oh dear. I require Kicker to work"
    echo "Install it with:"
    echo "    $ gem install kicker"
    exit
}

KNITR="echo \"Rerunning Knitr...\"; Rscript -e \"library(knitr); knit('./${FILE}')\""

echo "Watching ${FILE}..."
#watchmedo shell-command \
#    --patterns="${FILE}*" \
#    --command="$KNITR" \
    .
kicker -e "${KNITR}" ${FILE}
