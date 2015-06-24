clear;
clc;
funcprot(0);

//given data
D2 = 23.76;//diameter of rotor in cm
N = 38140;//rotational speed in rev/min
alpha2 = 72;//absolute flow angle in deg
d = 0.5*D2;//rotor mean exit diameter

//Calcultaions
U2 = %pi*N*D2/(100*60);
w2 = U2/tan(alpha2*%pi/180);
c2 = U2*sin(alpha2*%pi/180);
w3 = 2*w2;
U3 = 0.5*U2;
c3 = sqrt(w3^2 - U3^2);
delW = 0.5*((U2^2 - U3^2)+(w3^2 - w2^2)+(c2^2 - c3^2));
inp_U2 =  0.5*(U2^2 - U3^2)/delW;
inp_w2 = 0.5*(w3^2 - w2^2)/delW;
inp_c2 = 0.5*(c2^2 - c3^2)/delW;

//Results
printf('The fractional inputs from the three terms are, for the U^2 terms, %.3f; \n for the w^2 terms, %.3f; for the c^2 terms, %.3f.',inp_U2,inp_w2,inp_c2);

//there are errors in the answers given in textbook
