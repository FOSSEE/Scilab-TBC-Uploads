//Chapter-9,Example9_19,pg 9_69
V=250
P=4
Ra=0.1
Rsh=125
Vbr=2//brush drop
//no load condition
Ilo=4
No=1200
Il1=61
Ish=V/Rsh
Iao=Ilo-Ish
Ebo=V-Iao*Ra-Vbr
//full load condition
//phi1=phio-o.o5*phio       (weakened by 5%)
//phi=phi1/phio
phi=0.95
Ia1=Il1-Ish
Eb1=V-Ia1*Ra-Vbr
N1=No*Eb1/(Ebo*phi)
printf("full load speed\n")
printf("N1=%.3f r.p.m",N1)
