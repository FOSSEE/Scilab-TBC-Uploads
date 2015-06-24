clc; funcprot(0); //Example 20.5

//Initializing the variables
f = 0;
Atunnel = 1.227;
Ashaft = 12.57;
Q =2;
L = 200;
g = 9.81; 

//Calculations
Zmax = (Q/Ashaft)*sqrt(Ashaft*L/(Atunnel*g));
T = 2*%pi*sqrt(Ashaft*L/(Atunnel*g));
disp(T,"Mass Oscillation Period (s) : ",Zmax,"Peak water level (m):");