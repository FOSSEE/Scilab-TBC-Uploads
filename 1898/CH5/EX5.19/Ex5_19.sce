clear all; clc;

disp("Scilab Code Ex 5.19 : ")

//Given:
ro = 50/1000; //m
ri = 30/1000; //m
c = ro;
shear = 20*10^6; //N/m^2

//Maximum Elastic Torque:
J = (%pi/2)*((ro^4)-(ri^4));
T_y = (shear*J)/c; // tou = Tc/J
T_y = T_y/1000; //in kN

//Plastic Torque:
x0 = 0.03;
x1 = 0.05;
I = integrate('rho^2','rho',x0,x1)
Tp =  (2*%pi*I*shear);
Tp= Tp/1000;

//Outer Shear Strain:
strain = (0.286*10^-3*ro)/(ri);

//Display:


printf('\n\nThe maximum torque that can be applied to the shaft without causing the material to yield   = %1.2f kNm',T_y);
printf('\nThe plastic torque that can be applied to the shaft                                         = %1.2f kNm',Tp);
printf('\nThe minimum shear strain at the outer radius of the shaft                                   = %1.7f rad',strain);


//----------------------------------------------------------------END------------------------------------------------------------------------

