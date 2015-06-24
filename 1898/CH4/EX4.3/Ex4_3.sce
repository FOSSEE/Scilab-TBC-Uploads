clear all; clc;

disp("Scilab Code Ex 4.3 : ")

//Given:
d_ac = 20; //mm
r_ac = d_ac/(2*1000); //radius in m
d_bd =40; //mm
r_bd = d_bd/(2*1000); //radius in m
P = 90; //kN
E_st = 200*(10^9); //Pa
E_al = 70*(10^9); //Pa
l_af = 200; //mm
l_fb = 400; //mm
l_bd = 300; //mm
l_ac = l_bd;

//Calculations:

//Internal Force:
P_ac = 60; //kN
P_bd = 30; //kN

//Displacement:

//Post AC: delta = PL/AE
num1 = -(P_ac*10^3*(l_ac/1000));
denom1 = %pi* r_ac^2*E_st;
delta_a = -num1/denom1; //downwards
delta_a = delta_a*1000; //in m

//Post BD: delta = PL/AE
num2 = -(P_bd*10^3*(l_bd/1000));
denom2 = %pi* r_bd^2*E_al;
delta_b = -num2/denom2; //downwards
delta_b = delta_b*1000; //in m


delta_f = delta_b + (0.184)*(l_fb/(l_af+l_fb)); //By similar triangles from the figure.

//Display:

printf('\n\nThe displacement of Post AC       = +%1.3f mm downwards',delta_a);
printf('\nThe displacement of Post BD       = +%1.3f mm downwards',delta_b);
printf('\nnThe displacement of point F      = +%1.3f mm downwards',delta_f);

//------------------------------------------------------------------------------END-----------------------------------------------------------------------------------------






