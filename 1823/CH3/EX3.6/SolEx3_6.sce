//find (a) IEQ and (b) VCEQ. (c) Find VCEQ if RC is changed to 6 k and all else remains the same.
//Solved Example Ex3.6 page no 84
clear
clc
b=100
a=b/(b+1)
Ibq=20//10^-6           //mA
Icq=(b*Ibq)/1000        //mA
Ieq=Icq/a               //mA
printf("\n  Icq = %0.1f  mA",Icq)
printf("\n  Ieq = %0.2f  mA",Ieq)

