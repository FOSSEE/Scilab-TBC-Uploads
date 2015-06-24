//Example 6.3
//Fiber Strengthing
//Page No. 222
clc;clear;close;

Ef=380;          //in GPa
Em=60;             //in GPa
//Case 1
f_f=0.1;           //no unit
Ec=Ef*f_f+(1-f_f)*Em;
printf('\nEc for 10 vol%% = %g GPa\n',Ec);
//Case 2
f_f=0.6;              //no unit
Ec=Ef*f_f+(1-f_f)*Em;
printf('\nEc for 60 vol%% = %g GPa\n',Ec);
