//Chapter-9,Example9_4,pg 9_21
P=4
A=P
V=230
Ra=0.6
Z=250
phi=30*10^-3//flux(in Wb)
Ia=40
Eb=V-Ia*Ra
N=Eb*60*A/(phi*P*Z)
printf("back e.m.f\n")
printf("Eb=%.f V\n",Eb)
printf("speed of motor\n")
printf("N=%.f r.p.m",N)
