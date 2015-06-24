clear all; clc;

disp("Scilab Code Ex 7.3 : ")

//Given:
udl = 6.5; //kN
l_bc = 8; //m
l = 150/1000;//m
t = 30/1000;//m

//Internal Shear:
w = udl*l_bc/2;
l_wc = l_bc/4;
l_bw = l_bc - l_wc;
V = (w*l_bw)/l_bc;
R_b = w - V;

//Section Properties:
y1= l/2;
A = (l*t);
y2= l+(t/2);
y_dash = (y1*A + y2*A)/(2*A);
I1 = (t*l^3)/12;
I2 = (A*(y_dash-y1)^2);
I3 = (l*t^3)/12;
I4 = (A*(y2 - y_dash)^2);
I = I1+I2+I3+I4;

Q = ((l+t)-(t/2)-y_dash)*A;

//Shear Stress:
tou_max = (V*Q)/(I*t*1000);

//Display:

printf("\n\nThe maximum shear stress in the glue necessary to hold the boards together    = %1.2f MPa',tou_max);


//----------------------------------------------------------------------END--------------------------------------------------------------------------------
