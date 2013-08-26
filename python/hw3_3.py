import string
import sys

def remove_not_letters (s):
    return ''.join([a for a in s if a.isalpha()])

s =  remove_not_letters(''.join(open(sys.argv[1]).readlines())).upper()
if (s[::-1] == s):
    print "Es un palindromo"
else:
    print "No es un palindromo"
