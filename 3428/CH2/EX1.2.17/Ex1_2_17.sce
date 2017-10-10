//Section-1,Example-4,Page no.-AC.205
//To find the air required for the perfect combustion of 1 m^3 of the given gas.
clc;
T=0.22
L_O2=0.02
Net_O2=0.2
Plus_CO2=0.05
T_CO2=T+L_O2+Plus_CO2
T_N2=1.6
T_O2=Net_O2*(40/100)
T_W=T_CO2+T_N2+T_O2
M_Q=Net_O2*(100/21)
P_CO2=(T_CO2/T_W)*100
disp(P_CO2,'Percentage composition of CO_2')
P_N2=(T_N2/T_W)*100
disp(P_N2,'Percentage composition of N_2')
P_O2=(T_O2/T_W)*100
disp(P_O2,'Percentage composition of O_2')
