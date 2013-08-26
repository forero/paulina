import string
import sys

def reverse (s):
    l = list(s)
    l.reverse()
    return ''.join(l)

def remove_not_letters (s):
    return ''.join([a for a in s if a.isalpha()])

s =  remove_not_letters(''.join(open(sys.argv[1]).readlines())).upper()
if (reverse(s) == s):
    print "Es un palindromo"
else:
    print "No es un palindromo"
