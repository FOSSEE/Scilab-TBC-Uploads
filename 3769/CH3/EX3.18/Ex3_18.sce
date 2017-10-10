clear
//Given
a=9*10**9
q1=7*10**-6                          //C
q2=-2*10**-6
r=0.18
r1=0.09
A=9*10**5

//Calculation
U=a*q1*q2/r
W=0-U
U1=(q1*A/r1)+(q2*A/r1)+U

//Result
printf("\n (a) Electrostatic potential energy is  %0.1f  J",U)
printf("\n (b) Work required to seperate two charges is  %0.1f  J",W)
printf("\n (c) Electrostatic energy is  %0.3f  J", U1)
