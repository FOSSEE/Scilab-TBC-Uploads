clc

//At 38 0C
p_vs=0.0663; //bar
h_g1=2570.7; //kJ/kg
phi=0.25;
p_t=1.0132;
p_v=phi*p_vs;
cp=1.005;

//At 18 0C
h_g2=2534.4; //kJ/kg
p_vs=0.0206; //bar
W1=0.622*p_v/(p_t-p_v);

t_db1=38; //0C
t_db2=18; //0C

W2=(cp*(t_db1-t_db2) + W1*h_g1)/h_g2;

//amount of water added =amt
amt=W2-W1;
disp("amt=")
disp(amt)
disp("kg/kg of dry air")

p_v2=amt*p_t/(0.622+amt);

RH=p_v2/p_vs;
disp("Final relative humidity")
disp(RH)
