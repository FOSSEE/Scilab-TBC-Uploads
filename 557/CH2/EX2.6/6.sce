clc ;funcprot(0);
//Example 2.6  

//Initializing the variables
rho = 10^3;        //Density of water
h = 2;            //Height
g = 9.81;            //Acceleration due to gravity

//Calculations
p=rho*h*g; 
disp(p/1000,"Gauge pressure (k/m2) :");
