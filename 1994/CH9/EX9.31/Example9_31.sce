//Chapter-9,Example9_31,pg 9_85
//for first motor
N1=700
R=0.5//Ra+Rse
I1=70
V=500
Eb1=V-I1*R
K1=Eb1/(N1*I1)
//for second motor
N2=750
R=0.5
I2=70
V=500
Eb2=V-I2*R
K2=Eb2/(N2*I2)
//motors in series
It=70
Rt=2*R
Eb=V-It*Rt
N=Eb/(K1*It+K2*It)
printf("speed of motors\n")
printf("N=%.3f r.p.m",N)
