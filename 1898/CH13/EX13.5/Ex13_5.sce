clear all; clc;

disp("Scilab Code Ex 13.5 : ")

//Given:
E = 200*10^3; //MPa
sigma_y = 250; //MPa
x1 = 50; //mm
y1 = 75; //mm
z1 = 4.5; //m
e = 25; //mm

Ix = (1/12)*x1*(y1*2)^3;
A = x1*2*y1;
rx = sqrt(Ix/A);
L = z1*1000;
KL = 1*L;

sl_ratio = KL/rx;
c = y1;
ec_r = e*c/(rx^2);
P_a = 83; //MPa
A = 7500; //mm^2
P = P_a*A;
P = P/1000; //in kN

k = (L/(2*rx))*(sqrt(P/(E*A)));
sigma_max = (P*1000/A)*(1+ec_r*sec(k)); //Secant Formula

l = sqrt((P*1000)/(E*Ix));
nu_max = e*(sec(l*L/2)-1);

//Display:

printf('\n\nThe allowable eccentric load that can be applied on the column  = %1.1fkN',P);
printf('\nThe maximum deflection of the column due to the loading         = %1.0f mm',nu_max);

//--------------------------------------------------------------------------END------------------------------------------------------------------------------------
