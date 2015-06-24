clc;funcprot(0); //Example 6.3

//Initializing the variables 
d1 = 0.25;                //Pipeline diameter
d2 = 0.10;                //Throat diameter
h =0.63;                //Difference in height
rho = 1000;            //Density of water
g = 9.81             //Acceleration due to gravity

//Calculations
rho_Hg = 13.6*rho;
rho_Oil = 0.9*rho;
A1 = (%pi*d1^2)/4;            // Area at entry
m = (d1/d2)^2;                //Area ratio
Q = (A1/sqrt(m^2-1))*sqrt(2*g*h*(rho_Hg/rho_Oil -1));

disp(Q,"Thepretical Volume flow rate (m3/s ):");