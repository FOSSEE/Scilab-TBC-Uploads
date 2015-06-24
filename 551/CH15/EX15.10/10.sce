clc
r1=0.06; //m
r2=0.12; //m
r3=0.16; //m
k_A=0.24; //W/m 0C
k_B=0.4; //W/m 0C
h_hf=60; //W/m^2 0C
h_cf=12; //W/m^2 0C
t_hf=65; //0C
t_cf=20; //0C
L=60; //m

Q=2*%pi*L*(t_hf-t_cf)/(1/h_hf/r1 + log(r2/r1)/k_A + log(r3/r2)/k_B + 1/h_cf/r3);
disp("Rate of heat loss =")
disp(Q)
disp("W")