clc
p1=28; //bar
p2=0.06; //bar

//At 28 bar
h1=2802; //kJ/kg
s1=6.2104; //kJ/kg K

//At 0.06 bar
h_f2=151.5; //kJ/kg
h_f3=h_f2;
h_fg2=2415.9; //kJ/kg
s_f2=0.521; //kJ/kg K
s_fg2=7.809; //kJ/kg K
v_f=0.001; //m^3/kg

x2=(s1-s_f2)/s_fg2;

h2=h_f2 + x2*h_fg2;

W_turbine=h1-h2;
W_pump=v_f*(p1-p2)*100; //kJ/kg

h_f4=h_f2+W_pump;
Q1=h1-h_f4;
W_net=W_turbine - W_pump;

n_cycle=W_net/Q1;
disp("cyclic efficiency =")
disp(n_cycle)

ratio=W_net/W_turbine; //Work ratio
disp("Work ratio =")
disp(ratio)

S=3600/W_net; //Specific steam combustion
disp("Specific steam combustion=")
disp(S)
disp("kg/kWh")