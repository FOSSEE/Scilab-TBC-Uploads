//Find IB and IE.
//Solved Example Ex3.1 page no 83
clear
clc
betaa=50
Ic=1.2          //mA
Iceo=3*10^-3    //mA
Ib=((Ic-Iceo)/betaa)*1000       //mA
printf("Ib = %0.2f X 10^-3 mA",Ib)
IE=(Ic)-(Ib*10^-3)
printf("\n IE = %0.2f  mA",IE)
