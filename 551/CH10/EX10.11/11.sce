clc
t_db1=38; //0C
t_db2=18; //0C
phi_1=0.75;
phi_2=0.85;
p_t=1; //bar
cp=1.005;

//At 38 0C
p_vs=0.0663; //bar
h_g1=2570.7; //kJ/kg
p_v=phi_1*p_vs;
W1=0.622*p_v/(p_t-p_v);

//At 18 0C
p_vs=0.0206; //bar
h_g2=2534.4; //kJ/kg
h_f2=75.6; //kJ/kg
p_v=phi_2*p_vs;
W2=0.622*p_v/(p_t-p_v);

q=(W2*h_g2 - W1*h_g1) + cp*(t_db2-t_db1) + (W1-W2)*h_f2;
disp("Heat transfer rate=")
disp(q)
disp("kJ/kg of dry air")