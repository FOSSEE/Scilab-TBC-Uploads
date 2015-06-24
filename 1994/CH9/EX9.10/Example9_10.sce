//Chapter-9,Example9_10,pg 9_39
N1=800
I1=20
V=250
Ia1=I1
I2=50
Ia2=I2
Ra=0.2
Ise1=I1
Ise2=I2
Rse=0.3
Eb1=V-Ia1*Ra-Ise1*Rse
Eb2=V-Ia2*Ra-Ise2*Rse
//from speed equation
N2=N1*(Eb2/Eb1)*(Ia1/Ia2)
printf("speed of motor on new load\n")
printf("N2=%.3f r.p.m",N2)
