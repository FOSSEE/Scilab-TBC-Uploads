clc ;funcprot(0);
//Example 2.2 

//Initializing the variables
p1 = 22.4*10^3;//Initial Pressure
z1 = 11000;//Initial Height
z2 = 15000;//final Height
g = 9.81;//Acceleration due to gravity
R = 287; //Gas Constant
T = 273-56.6;//Temperature 

//Calculations
p2 = p1*exp(-g*(z2-z1)/(R*T));
rho2=p2/(R*T);
disp(rho2,"Final Density (kg/m3) :",p2/1000,"Final Pressure (kN/m2):");
