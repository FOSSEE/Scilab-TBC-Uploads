//Exa 8.10
clc;
clear;
close;
format('v',13)
//given data
Cpc=4.18*10^3;//  in J/kg degree C
Mc=1;// in kg/s
Mh=2.4;// in kg/s
Cph=2050; // in J/kg degree C
t_hi=100;// in degree C
t_ci=20;// in degree C
C_c=Mc*Cpc;// in W/degree C
C_h=Mh*Cph;// in W/degree C
U=300;// in W/m^2 degree C
A=10;// in m^2
C_min=C_c;
C_max=C_h;
N= A*U/C_min;
C=C_min/C_max;
// Effectiveness for counter flow heat exchanger
epsilon= (1-%e^(-N*(1-C)))/(1-C*%e^(-N*(1-C)));
// Total heat transfer
q=epsilon*C_min*(t_hi-t_ci);// in watt
disp(q*10^-3,"Total heat transfer in kW");
t_co=t_ci+epsilon*C*(t_hi-t_ci);
disp(t_co,"Exit temperature of water in degree C");
