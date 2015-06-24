clear all; clc;

disp("Scilab Code Ex 7.7 : ")

//Given:
V = 10; //kN
b1 = 6; //cm
h1 = 8; //cm
t = 1; //cm
b2 = b1-2*t;
h2 = h1-2*t; //cm
b3 = 4; //cm

//Calculations:
I = ((b1*h1^3)/12) - ((b2*h2^3)/12);

q_b = 0;

Q_c = ((b1/2)+(t/2))*(b3+(t))*t; 
q_c = (V*Q_c*100)/(I); //Q = VQ/I

Q_d = (2*h1/4*t*b3) + ((b1/2)+(t/2))*b3*t;
q_d = (V*Q_d*100)/(I); //Q = VQ/I

//Display:


printf("\n\nVariation of shear flow at B  = %1.1f N/mm',q_b);
printf("\nVariation of shear flow at C  = %1.1f N/mm',q_c);
printf('\nVariation of shear flow at D  = %1.1f N/mm',q_d);

//-------------------------------------------------------------------------END---------------------------------------------------------------------------------------

