//Section-1,Example-1,Page no.-AC.203
//To determine the quantity of products of combustion.
clc;
Net_O2=2069.3
W_O2=(25/100)*Net_O2
M_air=(100/23)*Net_O2    //Minimum weight of air required
W_Air=(125/100)*M_air   //Weight of air supplied for combustion
W_N2fuel=14             //Weight of N_2 present in fuel
W_N2=((77/100)*W_Air)+W_N2fuel
W_H2O=378+97
W_SO2=58
W_CO2=2427.3
T_W=(W_O2+W_N2+W_H2O+W_SO2+W_CO2)*10^-3
disp(T_W,'Total weight of products of combustion(kg)')
