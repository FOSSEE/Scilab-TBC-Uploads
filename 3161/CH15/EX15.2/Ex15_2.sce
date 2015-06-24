clc;
//page 764
//problem 15.2

//Chip Rate fc = 110 MHz
fc = 10*10^6;
Tc = 1/fc;

//Delay D = 0.1 ms
D = 0.1*10^-3;

//Speed of light c = 3*10^8 Kmps
c = 3*10^8;

//Estimated Distance d
d = 0.5*c*D;

//Tolerance Tol
Tol = 0.5*c*Tc;

disp('The target is between '+string(d-Tol)+' metres and '+string(d+Tol)+' metres of the source.');
