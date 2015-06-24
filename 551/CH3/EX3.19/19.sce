clc
h_g1=2797.2; //kJ/kg
c_ps= 2.25;
T_sup=350; //0C
T_s=212.4; //0C
h1=h_g1+c_ps*(T_sup-T_s);
h_f2=908.6; //kJ/kg
h_fg2=1888.6; //kJ/kg

// Main:20 bar, 250 0C
T_sup=250; //0C
Q=2*[h_g1+c_ps*(T_sup-T_s)];
x2=(Q-h1-h_f2)/h_fg2;
disp("Quality of steam")
disp(x2)