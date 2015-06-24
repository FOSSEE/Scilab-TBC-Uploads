clc
p1=20; //bar
p2=0.08; //bar

//At 20 bar, 360 0C

h1=3159.3; //kJ/kg
s1=6.9917; //kJ/kg K

//At 0.08 bar
h_f2=173.88; //kJ/kg
s_f2=0.5926; //kJ/kg K

h_fg2=2403.1; //kJ/kg
s_g=8.2287; //kJ/kg K
v_f=0.001008; //m^3/kg
s_fg=7.6361; //kJ/kg K

x2=(s1-s_f2)/s_fg;

h2=h_f2+x2*h_fg2;

W_pump=v_f*(p1-p2)*100; //kJ/kg
W_turbine=h1-h2;

W_net=h1-h2;
disp("Net work done=")
disp(W_net)
disp("kJ/kg")

h_f4=W_pump+h_f2;
Q1=h1-h_f4;

n_cycle=W_net/Q1;
disp("Cycle efficiency=")
disp(n_cycle)
