//Chapter-9,Example9_7,pg 9_37
P=4
Z=200
V=250
A=2
phi=25*10^-3
Ia=60
Il=Ia
Ra=0.15
Rse=0.2
Eb=V-Ia*(Ra+Rse)
N=Eb*60*A/(phi*P*Z)
printf("speed of motor\n")
printf("N=%.f r.p.m",N)
