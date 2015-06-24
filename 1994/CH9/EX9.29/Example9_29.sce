//Chapter-9,Example9_29,pg 9_83
Pr=12*10^3//rated output
V=200
Rsh=80
N1=800
n=0.9//efficiency
Out=0.8*Pr//output is 80% of rated
In=Out/n//input
TL=In-Out
//for max. efficiency
Iln=70//new current
//TL=Wc+(Ia1^2)*Ra
//bur Wc=(Ia1^2)*Ra
Wc=TL/2
Il=In/V
Ish=V/Rsh
Ia1=Il-Ish
Ra=Wc/(Ia1^2)
Ia2=Iln-Ish
Wcn=Wc//const. losses remain same
TL=(Ia2^2)*Ra+Wcn
Pi=V*Iln
n=(Pi-TL)*100/Pi
Eb1=V-Ia1*Ra
Eb2=V-Ia2*Ra
N2=N1*Eb2/Eb1
printf("speed of motor\n")
printf("N2=%.3f r.p.m",N2)
