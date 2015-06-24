// Exa 6.6
clc;
clear;
close;
// Given data
x = 0.95;
v_f = 0.001;
v_g = 0.1238;// in m^3/kg
V_wet = ((1-x)*v_f)+(x*v_g);// in m^3 correction little diff in ans 
disp(V_wet,"Specific volume of wet steam in m^3 is");
disp(v_g,"When the steam is dry saturated, the specific volume in m^3/kg is");
T_sat = 201.3;// in degree C
T_sat = T_sat + 273;// in K
T_sup = 300;// in degree C
T_sup = T_sup + 273;// in K
V_sup = v_g  * (T_sup/T_sat);// in m^3
disp(V_sup,"When the steam is superheated, the specific volume in m^3 is");


