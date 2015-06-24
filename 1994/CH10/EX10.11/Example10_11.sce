//Chapter-10,Example10_11,pg10_42
Tsh=190
P=8
f=50
fr=1.5
ML=700
s=fr/f
Ns=120*f/P
N=Ns*(1-s)
Po=Tsh*(2*%pi*N/60)
Pm=Po+ML
Pc=Pm*s/(1-s)
printf("rotor copper loss\n")
printf("Pc=%.3f W",Pc)
