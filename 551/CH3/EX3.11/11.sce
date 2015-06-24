clc
p=8*10^5; //Pa
x=0.8; 

v_g=0.240; //m^3/kg
h_fg=2046.5; //kJ/kg

disp("(i) External work done during evaporation")
W=p*x*v_g/10^3; //kJ
disp("W=")
disp(W)
disp("kJ")

disp("(ii) Internal latent heat")
Q=x*h_fg-W;
disp("Q=")
disp(Q)
disp("kJ")