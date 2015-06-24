clc; funcprot(0);//Example 16.2 

//Initializing the variables
B = [1.4 0.9];
D = [0.6 0.32];
g = 9.81;
h = 0.03;
Z = 0.25; 

//Calculations
Q1 = B(2)*D(2)*sqrt(2*g*h/(1-(B(2)*D(2)/B(1)*D(1))^2))
E = D(1)-Z;
Q2 = 1.705*B(2)*E^1.5;
disp(Q2 , "Volume flow rate (m3/s) :");
