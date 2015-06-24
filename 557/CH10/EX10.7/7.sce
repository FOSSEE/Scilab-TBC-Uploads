clc; funcprot(0); //Example 10.7 

//Initializing the variables
d1 = 0.140;
d2 = 0.250;
DpF_DpR = 0.6; //Difference in head loss when in forward and in reverse direction
K = 0.33 ;//From table
g = 9.81;
//Calculations
ratA = (d1/d2)^2;

v = sqrt(DpF_DpR*2*g/((1 - ratA)^2 - K));

disp(v,"Velocity (m/s):");