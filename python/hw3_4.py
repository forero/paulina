import os

for f in os.listdir(os.getcwd()):
    if (os.path.isfile(f)):
        print f, (len(open(f).readlines()))

    
