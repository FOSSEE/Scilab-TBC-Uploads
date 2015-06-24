clc
T1=250; //K
T2=125; //K
//cv=0.0045*T^2
Q1=integrate('0.045*T^2', 'T', T1, T2);
dS_system=integrate('0.045*T', 'T', T1, T2);

//dS_reservoir=(Q1-W)/T_resservoir

//dS_universe >= 0
//But for maximum work done dS_universe=0
dS_universe=0;

W_max=((-Q1) -T2*(dS_universe-dS_system))/1000;
disp("W_max=")
disp(W_max)
disp("kJ")