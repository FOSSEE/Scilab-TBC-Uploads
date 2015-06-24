//Chapter-10,Example10_4,pg10_20
P=8
f=50
fr=2
s=fr/f
s=s*100
printf("full load slip\n")
printf("s=%.f \n",s)
s=s/100
Ns=120*f/P
N=Ns*(1-s)
printf("speed of motor\n")
printf("N=%.f r.p.m",N)
