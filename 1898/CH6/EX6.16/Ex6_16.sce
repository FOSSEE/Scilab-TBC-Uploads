clear all; clc;

disp("Scilab Code Ex 6.16 : ")

//Given:
t1 = 15/1000; //m
t2 = 20/1000; //m
l = 250/1000; //m
b = 200/1000; //m
P = 2.4; //kN
l_a = 2; //m
l_b = 1; //m

//Internal Moment:
y1 = b/2;
y2 = t2/2;
A = (2*t1*b)+(t2*l);
y_bar = ((2*y1*t1*b)+(y2*t2*l))/A;

M = (P*l_a)+(1*y_bar);

//Section Property:
I1 = (1/12)*(l*t2^3) + (l*t2*(y_bar - y2)^2);
I2 = (1/12)*(t1*b^3) + (t1*b*(y1 - y_bar)^2);
I =I1+ 2*I2;

//Maximum Bending Stress:
c = b - y_bar;
sigma_max = (M*c)/(I*1000);

//Display:
    
  printf('\n\nThe maximum bending stress at section a-a = %1.1f MPa',sigma_max);

     
//-----------------------------------------------------------------END--------------------------------------------------------------------------


