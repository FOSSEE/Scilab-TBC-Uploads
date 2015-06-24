clc

n_turbine=0.9;
n_pump=0.8;
p1=80; //bar
p2=0.1; //bar
v_f=0.0010103; //m^3

//At 80 bar, 600 0C
h1=3642; //kJ/kg
s1=7.0206; //kJ/kg K
s_f2=0.6488; //kJ/kg K
s_fg2=7.5006; //kJ/kg K
h_f2=191.9; //kJ/kg
h_fg2=2392.3; //kJ/kg

x2=(s1-s_f2)/s_fg2;
h2=h_f2+x2*h_fg2;

W_turbine=n_turbine*(h1-h2);
W_pump=v_f*(p1-p2)*10^2;

W_actual=W_pump/n_pump; //Actual pump work

W_net=W_turbine - W_actual;
disp("Specific work =")
disp(W_net)
disp("kJ/kg")

h_f4=h_f2+W_actual;
Q1=h1-h_f4;

n_thermal=W_net/Q1; //Thermal efficiency
disp("Thermal efficiency =")
disp(n_thermal)