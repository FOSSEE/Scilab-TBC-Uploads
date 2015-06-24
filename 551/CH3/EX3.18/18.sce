clc
m=1; //kg
p=20; //bar
T_sup=400; //0C
x=0.9;
c_ps=2.3; //kJ/kg.K

disp("(i) Internal energy of 1 kg of superheated steam")
// At 20 bar: From steam tables
T_s=212.4; //0C
h_f=908.6; //kJ/kg
h_fg=1888.6; //kJ/kg
v_g=0.0995; //m^3/kg
h_sup = h_f+h_fg+c_ps*(T_sup-T_s);
v_sup=v_g*(T_sup+273)/(T_s+273);
u=h_sup-p*v_sup*10^2;
disp("Internal energy=")
disp(u)
disp("kJ/kg")

disp("(ii) Internal energy of 1 kg of wet steam")
h=h_f+x*h_fg;
u=h-p*x*v_g*10^2;
disp("Internal energy=")
disp(u)
disp("kJ/kg")