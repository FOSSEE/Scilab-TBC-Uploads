clc
cp=1.005; //kJ/kg K
T_A=333; //K
T_B=288; //K
p_A=140; //kPa
p_B=110; //kPa
//h=cp*T
//v/T=0.287/p
ds_system=integrate('cp/T', 'T', T_A, T_B) + integrate('0.287/p', 'p', p_A, p_B);
ds_surr=0;
ds_universe=ds_system+ds_surr;
disp("change in entropy of universe = ")
disp(ds_universe)
disp("kJ/kgK")
disp("Since change in entropy of universe from A to B is -ve")
disp("The flow is from B to A")