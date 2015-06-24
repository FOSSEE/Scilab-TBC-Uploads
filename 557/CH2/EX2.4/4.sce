clc ;funcprot(0);
//Example 2.4 

//Initializing the variables
p1 = 101*10^3;//Initial Pressure
z1 = 0;//Initial Height
z2 = 7000;//Final Height
T1 = 15+273;//Initial Temperature
g = 9.81;//Acceleration due to gravity
R = 287;//Gas Constant
dT = 6.5/1000;//Rate of Variation of Temperature

//Calculations
p2 = p1*(1-dT*(z2-z1)/T1)^(g/(R*dT));
T2 = T1 - dT*(z2-z1);
rho2 = p2/(R*T2);
disp(rho2,"Final Density (kg/m3 ):",p2/1000,"Final Pressure (kN/m2) :");
