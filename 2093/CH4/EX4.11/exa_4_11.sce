// Exa 4.11
clc;
clear;
close;
// Given data 
WLn= 100;
WLp= 200;
unCox= 0.2;// mA/V^2
unCox=unCox*10^-3;//in A/V^2
RSS= 25;// in kΩ
RSS= RSS*10^3;// in Ω
I=0.8;// in mA
I=I*10^-3;//in A
V_A= 20;// in V
i_D= I/2;// in A
// Formula i_D= 1/2*unCox*WLn*V_OV^2
V_OV= sqrt(2*i_D/(unCox*WLn));// in V
gm= I/V_OV;// in A/V
disp(gm*10^3,"Value of Gm in mA/V is : ")
ro2= V_A/(I/2);// in ohm
ro4= ro2;// in ohm
Ro= ro2*ro4/(ro2+ro4);// in ohm
disp(Ro*10^-3,"Value of Ro in kΩ is : ")
Ad= gm*Ro;// in V/V
disp(Ad,"Value  of Ad in V/V is :")
// Finding the value of gm3
upCox= 0.1;// mA/V^2
upCox=upCox*10^-3;//in A/V^2
// Formula i_D= 1/2*upCox*WLp*V_OV^2
V_OV= sqrt(2*i_D/(upCox*WLp));// in V
gm3= I/V_OV;// in A/V
Acm= 1/(2*gm3*RSS);//in V/V
disp(abs(Acm),"Value of |Acm| in V/V is : ")
CMRRindB= 20*log10(abs(Ad)/abs(Acm));//in dB
disp(round(CMRRindB),"CMRR in dB is :")
