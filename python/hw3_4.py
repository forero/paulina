import os

for f in os.listdir(os.getcwd()):
    print f, (len(open(f).readlines()))
