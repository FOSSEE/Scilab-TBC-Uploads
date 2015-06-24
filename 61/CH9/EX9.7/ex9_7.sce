//ex9.7
f=200*10^3;    //frequency in hertz
I_c_sat=100*10^-3;
V_ce_sat=0.2;
t_on=1*10^-6;
T=1/f;    //time period of signal
P_D_avg=(t_on/T)*I_c_sat*V_ce_sat;
disp(P_D_avg,'average power dissipation in Watts')