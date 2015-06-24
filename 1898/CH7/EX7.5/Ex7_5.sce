clear all; clc;

disp("Scilab Code Ex 7.5 : ")

//Given:
V = 80; //N
t = 1.5; //cm
a = 7.5; //cm
b = a-2*t; //cm
F_nail= 30; //N

//Section Properties:
I = (a*a^3 - b*b^3 )/12;
Q_b = (((a-2*t)/2)+(t/2))*a*t; //Q = y'A'
Q_c = (((a-2*t)/2)+(t/2))*(a-2*t)*t; //Q = y'A'

//Shear Flow:
q_b = (V*Q_b)/I;
q_c = (V*Q_c)/I;

s_b = F_nail/(q_b/2);
s_c = F_nail/(q_c/2);

//Display:


printf("\n\nThe maximum spacing of nails required at B is    = %1.0f cm',s_b);
printf("\nThe maximum spacing of nails required at C is    = %1.1f cm',s_c);



//----------------------------------------------------------------------END--------------------------------------------------------------------------------
