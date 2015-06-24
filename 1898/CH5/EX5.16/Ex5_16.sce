clear all; clc;

disp("Scilab Code Ex 5.16 : ")

//Given:
T = 85; //Nm
G = 26; //GPa
t = 10; //mm thickness
a = 60; //mm side
l = 1.5; //m

//Average Shear Stress:
area_m = (a-t)*(a-t);
avg_shear = (T*10^3)/(2*t*area_m); //tou_avg = T/(2tarea_m);


//Angle of Twist:
ds_t = (4*(a-t))/t;
phi = (T*10^3*l*10^3*ds_t)/(4*(area_m^2)*G*10^3);

//Display:


printf('\n\nThe average shear stress in the tube at A    = %1.1f N/mm^2',avg_shear);
printf('\nThe angle of twist due to loading            = %1.5f rad',phi);

//------------------------------------------------------------------END------------------------------------------------------------------------
