clear all; clc;

disp("Scilab Code Ex 7.4 : ")

//Given:

V = 850; //kN
l1 =250/1000; //m
l2 = 300/1000; //m
l3 = 125/1000;//m
t = 10/1000; //m
h = 200/1000; //m

A1 = l1*t;
A2 = l2*t;
A3 = l3*t;

y1 = l2+(t/2);
y2 = l2/2;
y3 = h+(t/2);

y_dash = (2*y2*A2 + A1*y1 + A3*y3)/(2*A2 + A1 + A3);

I1 = ((l1*t^3)/12) +(A1 * (l2+(t/2)-y_dash)^2);
I2 = ((t*l2^3)/12) +(A2 * (y_dash - (l2/2))^2);
I3 = ((l3*t^3)/12) +(A1 * (h+(t/2)-y_dash)^2);
I = 2*I2 + I1 + I3;

Q_b = (l2+(t/2) - y_dash)*A1; //Q = y'A'
Q_c = (h+(t/2) - y_dash)*A3; //Q = y'A'

//Shear Flow:

q_b = (V*Q_b)/I;
q_c = (V*Q_c)/I;

q_b = q_b/(2*1000);
q_c = q_c/(2*1000);

//Display:

printf("\n\nThe shear flow at B, resisted by the glue is    = %1.2f MN/m',q_b);
printf("\nThe shear flow at C, resisted by the glue is    = %1.4f MN/m',q_c);




//----------------------------------------------------------------------END--------------------------------------------------------------------------------
