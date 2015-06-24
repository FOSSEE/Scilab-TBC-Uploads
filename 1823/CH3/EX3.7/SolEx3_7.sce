//find (a) IEQ and (b) RB.(c) find VCEQ
//Solved Example Ex3.7 page no 85
clear
clc
b=80
a=b/(b+1)
Ibq=40//10^-6           //mA
Ieq=(Ibq/(1-a))/1000       //mA
printf("\n  Ieq = %0.2f  mA",Ieq)
Icq=(b*Ibq)/1000
printf("\n  Icq = %0.2f  mA",Icq)

