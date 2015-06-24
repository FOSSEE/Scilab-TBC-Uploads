//Solved Example Ex3.16 page no 89
clear
clc
b=80
a=(b/(b+1))
Ibq=30
Icq=Ibq*b/1000
printf("\n  Icq = %0.2f  mA",Icq)
Ieq=(Icq/a)
printf("\n  Ieq = %0.2f  OmA",Ieq)
