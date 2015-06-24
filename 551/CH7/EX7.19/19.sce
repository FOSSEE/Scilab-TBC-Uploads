clc
h_fg=334; //kJ/kg
v_liq=1; //m^3/kg
v_ice=1.01; //m^3/kg
T1=273; //K
T2=263; //K
p1=1.013*10^5; //Pa

p2=(p1+h_fg*10^3/(v_ice-v_liq)*log(T1/T2))/10^5;
disp("p2=")
disp(p2)
disp("bar")