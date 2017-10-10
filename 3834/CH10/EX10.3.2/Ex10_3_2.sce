//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 10.3.2
//windows 7
//Scilab version-6.0.0
clc;
clear ;
//given

tau=2E-9;//Carrier recombination lifetime in s
Ith=90E-3;//threshold current in A
Ip=40E-3;//amplitude of modulation current in A
//case 1
Ib=80E-3;//Assumed bias current in A
Td=tau*log(Ip/(Ip+Ib-Ith));

mprintf("The delay time for broad-area laser diode with Ib %.2f mA= %.2f ns",Ib*1e3,Td*1E+9);
//case 2
Ib=70E-3;//Assumed bias current in A
Td=tau*log(Ip/(Ip+Ib-Ith));

mprintf("\nThe delay time for broad-area laser diode with Ib %.2f mA= %.2f ns",Ib*1e3,Td*1E+9);
//case 3
Ib=90E-3;//Assumed bias current in A
Td=abs(tau*log(Ip/(Ip+Ib-Ith)));

mprintf("\nThe delay time for broad-area laser diode with Ib %.2f mA= %.2f ns",Ib*1e3,Td*1E+9);
//multiplication by 1e3 to convert unit to mA from A and multiplication by 1e9 to convert unit from s to ns

//the answers vary due to rounding 
