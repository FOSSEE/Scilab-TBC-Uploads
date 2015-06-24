clc ;funcprot(0);
//Example 2.1 

//Initializing the variables
z1 = 0; //Taking Ground as reference
z2 = -30;//Depth
rho = 1025;//Density
g = 9.81;//Acceleration due to gravity

//Calculation
pressureIncrease = -rho*g*(z2-z1);
disp(pressureIncrease/1000,"Increase in Pressure (KN/m2):");