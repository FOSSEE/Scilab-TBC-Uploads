clc
t_db=35; //0C
t_wb=25; //0C
p_t=1.0132; //bar

//Corresponding to 25 0C in steam tables
p_vs_wb=0.0317; //bar

p_v=p_vs_wb - (p_t - p_vs_wb)*(t_db - t_wb)/(1527.4 - 1.3*t_wb);


disp("(i) Specific humidity")
W=0.622*p_v/(p_t-p_v);
disp("W=")
disp(W)
disp("kg/kg of dry air")

disp("(ii) Relative humidity")

//Corresponding to 35 0C, from steam tables
p_vs=0.0563;

phi=p_v/p_vs;
disp("phi")
disp(phi)


disp("(iii) Vapour density")
R_v=8314.3/18;
T_v=308; //K

rho_v=p_v*10^5/(R_v*T_v);
disp("rho_v=")
disp(rho_v)
disp("kg/m^3")


disp("(iv) Dew point temperature")
t_dp=21 + (22-21)*(0.0252-0.0249)/(0.0264-0.0249);
disp("t_dp")
disp(t_dp)
disp("0C")


disp("(v) Enthalpy of mixture per kg of dry air")
cp=1.005;
h_g=2565.3; //kJ/kg; corresponding to 35 0C
h_vapour=h_g + 1.88*(t_db - t_dp);

h=cp*t_db + W*h_vapour;
disp("h=")
disp(h)
disp("kJ/kg of dry air")