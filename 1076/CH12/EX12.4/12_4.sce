clear
clc

E=100
Zc=400
L=4000

mprintf("et= %d exp( - %.1f t) KV\n", 2*E, Zc/L)
mprintf("er= %d (2*exp( - %.1f t) -1) KV\n", E, Zc/L)
