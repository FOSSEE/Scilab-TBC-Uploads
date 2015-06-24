//Find (a)Beta ; b() ICQ ,and (c) IEQ.
//Solved Example Ex3.4 page no 83
clear
clc
alpha=0.98
betaa=alpha/(1-alpha)
printf("\n  Beta = %0.3f  ",betaa)
Icq=1.47            //mA
Ieq=Icq/alpha       //mA
printf("\n  Ieq = %0.3f  mA",Ieq)
