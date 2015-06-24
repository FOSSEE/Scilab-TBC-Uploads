clear
clc

t1=15
P1=1.3
pf1=.75

t2=9
P2=.4
pf2=.8

pfd=.95

kvar1i=P1*1e3*tan (acos(pf1))
kvar1f=P1*1e3*tan (acos(pfd))
kvarr1=kvar1i-kvar1f

kvar2i=P2*1e3*tan (acos(pf2))
kvar2f=P2*1e3*tan (acos(pfd))
kvarr2=kvar2i-kvar2f

SBC=abs(kvarr2-kvarr1)
FBC=min(kvarr2,kvarr1)

mprintf("Switch Bank Capacity: %.2f KVAR, Fixed Bank Capacity: %.2f KVAR",SBC, FBC)
