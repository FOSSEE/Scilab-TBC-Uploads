//find the collector current for  (a) IB = 0 and (b) IB = 40 A.
//Solved Example Ex3.2 page no 83
clear
clc
betaa=100
Ib=0                //mA
Icbo=5//V           //mA
Iceo=(betaa+1)*Icbo     //mA
printf("\n When Ib =0 Iceo = %0.2f  mA",Iceo)
Ib=40
Ic=((betaa*Ib)+(betaa+1)*Icbo)/1000
printf("\n When Ib =40 Ic = %0.3f  mA",Ic)
