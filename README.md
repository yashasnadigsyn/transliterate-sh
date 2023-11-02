# transliterate-sh
Transliterate to your desired language while typing on any app

# Dependencies:
1) xdotools
2) xbindkeys
3) rofi
4) jq
5) xsel

# Installation:

1) `git clone https://github.com/yashasnadigsyn/transliterate-sh`

2) `sh setup.sh`

or manually do these steps:
1) copy config.rasi to .config/rofi/config.rasi
2) copy transli.sh to $HOME (or change path of transli.sh in xbindkeysrc)
3) copy .xbindkeysrc to $HOME 

# How to use:
While typing, use alt+q to get options and choose from one

# Change language:
Change lang variable in transli.sh by your language code

All language codes: https://github.com/narVidhai/Google-Transliterate-API/blob/master/Languages.md

# Credits:
Thanks to <a href="https://github.com/narVidhai/Google-Transliterate-API/">narVidhari</a> for the google input tools url.
