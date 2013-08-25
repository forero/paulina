# -*- coding: utf-8 -*- 

import sys
import string

def v_sum(a,b):
    if (a == []):
        return []
    return [a[0]+b[0]]+v_sum(a[1:],b[1:])

mat = [[u'á',u'Á',u'A',u'a'],
       [u'é',u'É',u'e',u'E'],
       [u'í',u'Í',u'i',u'I'],
       [u'ó',u'Ó',u'o',u'O'],
       [u'ú',u'Ú',u'u',u'U']]

def es(c,i):
    return mat[i].count(c)

def process(s):
    if (s == ''):
        return [0,0,0,0,0]
    c = s[0]
    s_r = process(s[1:])
    return v_sum([int(es(c,0)),int(es(c,1)),int(es(c,2)),int(es(c,3)),int(es(c,4))],s_r)
        

s = string.join(open(sys.argv[1]).readlines()).decode('utf-8')
arr = process(s)
print "a: %d \ne: %d\ni: %d\no: %d\nu: %d\n"%(arr[0],arr[1],arr[2],arr[3],arr[4])


