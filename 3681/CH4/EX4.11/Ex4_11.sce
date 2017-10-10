// Calculating the heat conducted across the former from winding to core
clc;
disp('Example 4.11, Page No. = 4.17')
// Given Data
t = 2.5;// Thickness of former (in mm)
t_air = 1;// Thickness of air space (in mm)
lw = 150*250;// The inner dimentions of the former of field coil (in mm square)
h = 200;// Winding height (in mm)
s_former = 0.166;// Thermal conductivity of former (in W per meter per degree celsius)
s_air = 0.05;// Thermal conductivity of air (in W per meter per degree celsius)
T = 40;// Temperature rise (in degree celsius)
// Calculation of the heat conducted across the former from winding to core
S = 2*(150+250)*h*10^(-6);// Area of path of heat flow (in meter square)
R_former = t*10^(-3)/(S*s_former);// Thermal resistance of former (in ohm)
R_air = t_air*10^(-3)/(S*s_air);// Thermal resistance of former (in ohm)
R0 = R_former+R_air;// Since R_former and R_air are in series. Total thermal resistance to heat flow (in ohm)
Q_con = T/R0;// Heat conducted (in Watts)
disp(Q_con,'Heat conducted across the former from winding to core (in Watts)=');
//in book answers is 182.6 Watts.  The answers vary due to round off error

