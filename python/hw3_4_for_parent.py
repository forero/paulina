import os
 

d = os.path.abspath(os.pardir)

for f in os.listdir(d):
    s = d+'/'+f
    if (os.path.isfile(s)):
        print f, (len(open(s).readlines()))
