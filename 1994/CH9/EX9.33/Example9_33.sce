//Chapter-9,Example9_33,pg 9_87
V=500
Ra=1.2
Rsh=500
Ish=V/Rsh
Ilo=4
Iao=Ilo-Ish
Ebo=V-Iao*Ra
Il1=26
Ish1=1
Ia1=Il1-Ish1
Eb1=V-Ia1*Ra
No=1000
N1=No*Eb1/Ebo
Rx=2.3//connected in series with armature
Eb2=V-Ia1*(Ra+Rx)
N2=N1*Eb2/Eb1
printf("speed of motor case-1\n")
printf("N2=%.3f r.p.m\n",N2)
Ish3=Ish1-0.15*Ish1//reduced by 15%
Ia3=Ish1*Ia1/(Ish3)
Eb3=V-Ia3*Ra
N3=N1*Eb3*Ish1/(Eb1*Ish3)
printf("speed of motor case-2\n")
printf("N3=%.3f r.p.m\n",N3)
