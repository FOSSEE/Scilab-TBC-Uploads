//Chapter-9,Example9_13,pg 9_51
V=250
Ra=0.15
Rx=0.1
Rse=0.1
N1=800
Ise1=30
Ia1=30//Ia1=Ise1
I1=Ia1
//phi=k*Ise
//T2=T1+0.5*T1(increased by 50%)..........(1)
//Ise2=Ia2*Rx/(Rx+Rse)
//putting values of Rx and Rse Ise2=0.5*Ia2.........(2)
//putting (1) and (2) in torque equation
Ia2=sqrt(2700)
Ise2=0.5*Ia2//from (2)
Eb1=V-Ia1*Ra-Ise1*Rse
Eb2=V-Ia2*Ra-Ise2*Rse
//using speed equation
N2=N1*Eb2*Ise1/(Eb1*Ise2)
printf("speed of motor\n")
printf("N2=%.3f r.p.m",N2)
