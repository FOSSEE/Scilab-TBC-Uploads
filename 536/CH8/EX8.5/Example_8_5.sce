clc;
clear;
printf("\n Example 8.5\n");

Q_l=7.5e-4;
printf("\n Given:\n Volume flow rate of liquid = %.1f m^3/s",Q_l*1e4);
rho_l=1200;
printf("\n Density of liquid = %d kg/m^3",rho_l);
h=20;
printf("\n height to which liquid is raised = %d m",h);
P=450e3;
printf("\n Air is available at pressure = %d kN/m^2",P*1e-3);
eta=30/100;
printf("\n Efficiency = %d percent",eta*100);
P_atm=101.3e3;
Gamma=1.4;
G=Q_l*rho_l;//Mass flow of liquid
//Work per unit time done by the pump
W=G*9.81*h;
printf("\n\n Calculations:\n Work per unit time done by the pump = %.1f W",W);
//Actual work of expansion of air per unit time
W_act=W/eta;
printf("\n Actual work of expansion of air per unit time = %.1f W",W_act);
//Taking the molecular weight of air
M=28.9;
//the specific volume of air at 101.3 kN/m2 and 273 K
va=22.4/M;
//and in equation 8,49:
x=poly([0],'x');
Ga=roots(P_atm*va*x*log(P/P_atm)-W_act);
Q=Ga*va;
printf("\n volume flow rate of air = %.4f m^3/s",Q);
//From equation 8.37
//Power for compression
Power=(P_atm*Q)*(Gamma/(Gamma-1))*((P/P_atm)^((Gamma-1)/Gamma)-1);
Power_reqd=Power/1000;
printf("\n power requirement of the pump = %.3f kW",Power_reqd);