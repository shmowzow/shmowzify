#!/bin/bash
 
# What happens when you compile Brainfuck to Shmowzow:

# ">" becomes "Shmowzow"
# "<" becomes "shmowzoW"
# "+" becomes "SHMOWZOW"
# "-" becomes "shmowzow"
# "." becomes "ShMoWzOw"
# "," becomes "sHmOwZoW"
# "[" becomes "ShmoWzow"
# "]" becomes "sHMOwZOW"

sed "s/>/Shmowzow\n/g ; s/</shmowzoW\n/g ; s/+/SHMOWZOW\n/g ; s/-/shmowzow\n/g ; s/\./ShMoWzOw\n/g ; s/,/sHmOwZoW\n/g ; s/\[/ShmoWzow\n/g ; s/\]/sHMOwZOW\n/g" | grep -v '^$'
