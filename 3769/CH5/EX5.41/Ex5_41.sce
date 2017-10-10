clear
//Given
V=1.5
a=1.5
r1=0.5                     //ohm
r2=0.25
R=2.25                      //ohm

//Calculation
E=V+a
r=r1+r2
Rt=r+R
I=E/Rt
pd=V-(I*r1)
pd1=V-(I*r2)

//Result
printf("\n (i) The circuit current is  %0.3f  A",I)
printf("\n (ii) P.D across the terminals of each  cell is  %0.3f V and  %0.3f V",pd,pd1)
