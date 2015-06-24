//Chapter-9,Example9_16,pg 9_65
V=120
Ra=0.2
Rsh=60
//for full load
Il1=40
N1=1800
//for shunt motor
Ish=V/Rsh
Ia1=Il1-Ish
Eb1=V-Ia1*Ra
//for half load T2=T1/2
Ia2=Ia1*0.5//T=k*Ia
Eb2=V-Ia2*Ra
N2=N1*Eb2/Eb1//from torque equation
printf("speed of motor\n")
printf("N2=%.2f r.p.m",N2)
