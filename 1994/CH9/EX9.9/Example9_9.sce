//Chapter-9,Example9_9,pg 9_38
No=1000
V=220
Rsh=110
Ra=0.3
Ish=V/Rsh
Ilo=6
Iao=Ilo-Ish
Rao=0.3
Ebo=V-Iao*Ra
//on full load
Il=50
IaFL=Il-Ish
EbFL=V-IaFL*Ra
//N=k*Eb/phi
NFL=No*EbFL/Ebo
printf("speed at full load\n")
printf("NFL=%.3f r.p.m",NFL)
