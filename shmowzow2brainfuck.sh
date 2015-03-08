#!/bin/bash
 
# What happens when you compile Shmowzow to Brainfuck:

# "Shmowzow" becomes ">"
# "shmowzoW" becomes "<"
# "SHMOWZOW" becomes "+"
# "shmowzow" becomes "-"
# "ShMoWzOw" becomes "."
# "sHmOwZoW" becomes ","
# "ShmoWzow" becomes "["
# "sHMOwZOW" becomes "]"

sed "s/Shmowzow/>/g ; s/shmowzoW/</g ; s/SHMOWZOW/+/g ; s/shmowzowt/-/g ; s/ShMoWzOw/\./g ; s/sHmOwZoW/,/g ; s/ShmoWzow/\[/g ; s/sHMOwZOW/\]/g" | tr -d '\n'
