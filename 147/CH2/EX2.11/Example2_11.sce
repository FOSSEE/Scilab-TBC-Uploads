close();
clear;
clc;
//thevenin resistance 'Rth'
Rad = 33/14; //ohm
Rth = Rad;
//after converting 10 A current source into voltage source in Fig 2.14(b) 
Vth = 6/7 * 110; //V
//total power 'P'
P = Vth^2/(Rth+Rad); //W
mprintf("Total power supplied to network,P = %d W",round(P));