//Find the minimum value of RC that will maintain the transistor quiescent point at saturation,
//Solved Example Ex3.16 page no 89
clear
clc
b=80
a=(b/(b+1))
Ibq=30              //mA        
Icq=Ibq*b/1000      //mA
printf("\n  Icq = %0.2f  mA",Icq)
Ieq=(Icq/a)
printf("\n  Ieq = %0.2f  OmA",Ieq)
