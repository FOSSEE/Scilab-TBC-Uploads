clear all; clc;

disp("Scilab Code Ex 5.17 : ")

//Given:
tou_allow = 90; //MPa
phi_allow = 2*10^-3; //rad
a = 200; //mm side
angle = (60*%pi)/180;
h = a*sin(angle);
l = 3; //m
t = 5/1000; //m
G = 75*10^9; //N/mm^2

//Calculations:
area_m = 0.5*a*h*10^-6;//m^2 a = (1/2)bh
ds_t = (3*a)/(t*1000);

T_shear = (tou_allow*10^6*2*t*area_m); //tou_avg = T/(2tarea_m);

T_twist = (phi_allow*4*area_m^2*G)/(l*ds_t);

 T = min(T_shear, T_twist);
 

//Display:


printf('\n\nThe maximum torque that the thin tube can be subjected to    = %1.1f Nm',T);

//----------------------------------------------------------------END------------------------------------------------------------------------


