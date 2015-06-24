//Find (a) VGSQ; ðbÞ IDQ, and (c) VDSQ.
//Solved Example Ex4.11 page no 121  
clear
clc
Vt=4//V
R1=50//k ohm
R2=0.4//M ohm
Rs=0
Rd=2 //k ohm
Vdd=15//V
Vgsq=(R1/(R1+R2*10^3))*Vdd
printf("\n  Vgsq = %0.2f  V",Vgsq)
Idon=10//*10^-3
Idq=Idon*((1-(Vgsq/Vt))^2)
printf("\n  Idq = %0.2f  mA",Idq)
Vdsq=Vdd-(Idq*Rd)
printf("\n  Vdsq = %0.2f  V",Vdsq)
