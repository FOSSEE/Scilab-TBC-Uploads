//Exa 8.13
clc;
clear;
close;
format('v',13)
//given data
t_hi=125;// in degree C
t_ci=22;// in degree C
Mh=21;// in kg/s
Mc=5;// in kg/s
C_ph=2100;// in J/kg K
C_pc=4100;// in J/kg K
Ch=Mh*C_ph;// in Js/kg
Cc=Mc*C_pc;// in Js/kg
C_min=Cc;// in Js/kg
C_max=Ch;// in Js/kg
U=325;// in W/m^2 K
d=2.2*10^-2;// in m
l=5;// in m
total_tube=195;// number of total tubes
A=%pi*d*l*total_tube
NTU=U*A/C_min;
C=C_min/C_max;
epsilon = (1-exp(-NTU*(1-C)))/(1-C*exp(-NTU*(1-C)));
t_co= t_ci+epsilon*(t_hi-t_ci);
t_ho= t_hi-epsilon*Cc/Ch*(t_hi-t_ci);
disp("Exit temperature  in degree C : "+string(t_co)+" and "+string(t_ho));

// Total heat transfer
q=epsilon*C_min*(t_hi-t_ci);
disp(q*10^-3,"Total heat transfer in kW")