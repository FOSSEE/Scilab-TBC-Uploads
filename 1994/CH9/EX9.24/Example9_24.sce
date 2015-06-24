//Chapter-9,Example9_24,pg 9_77
R=1
V1=230
N1=300
Ia1=15
N2=375
//using torque equation T=k*N^2
Ia2=N2*Ia1/N1
//using speed equation N=k*Eb/Ia........(1)
Eb1=V1-Ia1*R
//case-2
//Eb2=V2-Ia2*R=V2-18.75......(2)
//putting (2) in (1)
V2=(N2*Eb1*Ia2/(N1*Ia1))+18.75
printf("new supply voltage\n")
printf("V2=%.3f V",V2)
