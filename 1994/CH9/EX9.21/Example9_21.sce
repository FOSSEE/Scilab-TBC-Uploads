//Chapter-9,Example9_21,pg 9_71
Ra=0.1
V=110
P=4
Ia1=50
I1=Ia1
Rse=0.02
N1=700
Eb1=V-Ia1*Ra-Ia1*Rse
//using torque  equation T=k*phi*Ia
Ia2=sqrt(2)*Ia1
Eb2=V-Ia2*Ra-Ia2*Rse/4//parallel speed groups
//using speed equation N=k*Eb/phi
N2=N1*Eb2*2*Ia1/(Eb1*Ia2)
printf("speed of motor\n")
printf("N2=%.3f r.p.m",N2)
