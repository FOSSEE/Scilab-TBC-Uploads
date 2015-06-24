//Chapter-9,Example9_14,pg 9_52
V=220
Ise1=15
Ia1=Ise1
Ia2=10
Ise2=Ia2
I2=Ia2
N1=900
Ra=0.5
Rse=0.5
Rx=4
Eb1=V-Ia1*Ra-Ise1*Rse
Eb2=V-Ia2*Ra-Ise2*Rse-I2*Rx
N2=N1*Eb2*Ise1/(Eb1*Ise2)
printf("speed of motor\n")
printf("N2=%.3f r.p.m",N2)
