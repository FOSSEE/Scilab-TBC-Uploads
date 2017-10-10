
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 8.1
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
eta=0.50;//quantum efficiency of optical fibre
e=1.6e-19;//energy of electron in 1 joules
Po=250e-9;//incident optical power in watts
B=8e6;//bandwidth of receiver in Hz
lamda=0.85e-6;//wavelenth in meter
Id=4e-9;//dark current in ampere
t=300;//temperature in kelvin
c=3e8;// velocity in m/s
K=1.38e-23;//bolt'zman constant in S.I units
h=6.62e-34//planck's constant in S.I.Units
//case 1:
u=[eta*e*Po*lamda];
v=[h]*[c];
Ip=u/v;//photo current in diode in nA
mprintf("\n Photo current in diode is=%.2f nA",Ip*1e9);

//case 2:
i1=2*e*B*(Ip+Id);
ish=sqrt(i1);//total shot noise generated in photo diode
mprintf("\n Total shot noise generated in photo diode is=%.2f nA",ish*1e9);

//case 3:
x=4*K*t*B;
R=6e3;//load resistance in ohms
i3=x/R;
ith=sqrt(i3);//total thermal noise generated in load resistance
mprintf("\n The total thermal noise generated in load resistance is=%.2f nA",ith*1e9);
 //multiplication by 1e9 to convert the unit from A to nA
 
