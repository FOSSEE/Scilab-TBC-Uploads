clear ;
clc;
// Example 5.10
printf('Example 5.10\n\n');
printf('Page No. 123\n\n');

// given
m = 0.45;// Mass flow rate in kg/s
P = 2;// pressure in bar
T1 = 60;// in degree celcius
T2 = 250;// in degree celcius
h_s = 2971*10^3;// Specific enthalpy of superheated steam in J/kg
h_d = 2706*10^3;// Specific enthalpy of dry saturated steam in J/kg
h_e = h_s - h_d;//excess Specific enthalpy in J/kg
h = 251*10^3;// in J/kg
V_s = 0.885;// specific volume of dry saturated steam at 2bar in m^3/kg

h_r = h_d- h;// heat required to convert water at 60 deg C into dry saturated steam at 2 bar
w = (h_e/h_r);// in kg/kg
printf('the quantity of water requried is %.3f kg/kg\n\n',w)

M = m*w;// in kg/s
printf('the total mass flow rate of water required is %.3f kg/s \n\n',M)

M_d = M + m;// mass flow rate of desuperheated steam in kg/s
V = M_d*V_s;// in m^3/s
printf('the total mass flow rate of desuperheated steam required is %.4f m^3/s \n',V)
// Deviation in answer due to some approximation in answer in  the book

