# -*- coding: utf-8 -*- 

import string
import sys
from unidecode import unidecode


def remove_not_letters (s):
    return ''.join([unidecode(a) for a in s if a.isalpha()])


lines = open(sys.argv[1]).readlines()
for l in lines:
    s =  remove_not_letters(l.decode('utf-8')).upper()
    print (s[::-1] == s)
        
