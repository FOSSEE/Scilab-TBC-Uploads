//Drain supply Vdd, Drain resistance Rd, source resistance Rs, Gate resistance Rg
close();
clear;
clc;
Idss = 8/1000;//A
Vpo = 4;//V
Vdd = 15;//V
Rd = 5000;//ohm
Rs = 2000;
Rg = 10^6;
Idq1 = 1.22*10^(-3);//A
Vdsq1 = 0;
Vgsq1 = -Idq1*Rs;
Vgsq2 = Vgsq1;
Vdsq2 = Vdd - Vdsq1- Idq1*(Rs+Rd);
mprintf('Vgsq1 = %0.2f V\nVgsq2 = %0.2f V\nVdsq2 = %0.2f V',Vgsq1,Vgsq2,Vdsq2);