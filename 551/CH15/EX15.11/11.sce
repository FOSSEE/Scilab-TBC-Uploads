clc
r1=0.06; //m
r2=0.08; //m
k_A=42; //W/m 0C
k_B=0.8; //W/m 0C
t_hf=150; //0C
t_cf=20; //0C
h_hf=100; //W/m^2 0C
h_cf=30; //W/m^2 0C

//Q=2.1*2*%pi*r*L kW
//Q=0.989*L*10^3 W

//Q=2*%pi*L*(t_hf-t_cf)/(1/h_hf/r1 + log(r2/r1)/k_A + log(r3/r2)/k_B + 1/h_cf/r3)
//By solving above equation, using hit and trial method we get 
r3=0.105; //m
thickness=(r3-r2)*1000; //mm
disp("Thickness of insulation =")
disp(thickness)
disp("mm")