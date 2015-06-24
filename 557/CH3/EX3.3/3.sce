clc;funcprot(0);
//Example 3.3 

//Initializing the variables
D = 1.8;     //Depth of tank
h = 1.2;        //Depth of water
l = 3;      //Length of wall of tank
p = 35000;   //Air pressure
rho = 10^3;     //Density of water
g = 9.81;      //Acceleration due to gravity


//Calculations
Ra = p*D*l; //Force due to air
Rw = .5*(rho*g*h)*h*l; //Force due to water
R = Ra + Rw; // Resultant force
x = (Ra*0.9+Rw*0.4)/R; // Height of center of pressure from base
disp(x,"Height of the centre of pressure above the base(m) :",R/1000,"Resultant force on the wall(kN)");