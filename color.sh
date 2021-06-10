#!/usr/bin/env bash
# define a variable to underline text with [4 and foreground red ;31 and black background ;40
ulinered="\033[4;31;40m"
# define a variable to colorise foreground red
red="\033[31;40m"
# to reset the coloring scheme to white on black
none="\033[0m"

# sample output with the color coding applied as variables
echo -e $ulinered"ERROR:"$none$red" Something went wrong."$none

