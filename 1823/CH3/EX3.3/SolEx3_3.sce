//Find ICQ and IEQ.
//Solved Example Ex3.3 page no 83
clear
clc
alpha=0.98
betaa=alpha/(1-alpha)
Icbo=(5*10^-3)      //mA
Iceo=(betaa+1)*Icbo     //mA
printf("\n  Iceo = %0.2f  mA",Iceo)
Ibq=100*10^-3
Icq=(betaa*Ibq)+Iceo
printf("\n  Icq = %0.2f  mA",Icq)
Ieq=Icq+Ibq
printf("\n  Ieq = %0.2f  mA",Ieq)
