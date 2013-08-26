import sys

def factor(n, d = 2):
    if (n%d == 0):
        return [d]+factor(n/d,d)
    if (d*d > n):
        if (n != 1):
            return [n]
        return []
    return factor(n,d+1)

n = int(sys.argv[1])
if (not (0 < n <= 1000000)):
    print "El numero no se encuentra en el intervalo"
    
f = factor(n)
if (len(f) == 2):
    print "%d %d"%(f[0],f[1])

else:
    print "El numero no tiene una factorizacion de dos primos"
