//Example 7.7: Internal and external power efficiency
clc;
clear;
close;
//given data :
disp("part (a)")
as=0;//
ns=3.7;// assuming that the example 7.4
eta_int=0.50;// internal efficiency
V=1.5;// in V
I=120*10^-3;// in A
IBYe=120*10^-3;// 
Eph=1.43;// in eV
eta_int=0.50;// internal efficiency
fi_int=eta_int*IBYe*Eph;
t_power=I*V;
P_int=fi_int/t_power;
disp(P_int,"The internal power efficiency = ")
disp("part (b)")
format('v',6)
eta_ext=eta_int*(1-as)*2/(ns*(ns+1)^2);
fi_ext=eta_ext*IBYe*Eph;
t_power=I*V;
P_ext=fi_ext/t_power;
disp(P_ext,"The external power efficiency = ")
disp("part (c)")
format('e',9)
V=1.5;// in V
I=120*10^-3;// in A
IBYe=120*10^-3;// 
Eph=1.43;// in eV
n1=1.5;
n2=1.48;
na=n1;
eta_ext=0.0337;
eta_T=eta_ext*((n1^2-n2^2)/na^2);
fi_T=eta_T*IBYe*Eph;
t_power=I*V;
sfpc=fi_T/t_power;
O_loss=-10*log10(sfpc);
disp(sfpc,"The overall source fiber power coupling efficiency  = ")
format('v',5)
disp(O_loss,"The optical loss,(dB) = ")
