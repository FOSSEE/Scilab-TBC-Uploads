clc;funcprot(0);
//Example 3.4 

//Initializing the variables
R = 6; // Radius of arc
h = 2*R*sind(30);     //Depth of water
rho = 10^3;     //Density of water
g = 9.81;      //Acceleration due to gravity

//Calculations
Rh = (rho*g*h^2)/2; // Resultant horizontal force per unit length
Rv = rho*g*((60/360)*%pi*R^2 -R*sind(30)*R*cosd(30)); // Resultant vertical force per unit length
R = sqrt(Rh^2+Rv^2); // Resultant force on gate
theta = atand(Rv/Rh); //Angle between resultant force and horizontal

disp(theta,"Direction of resultant force to the horizontal(Degree):",R/1000,"Magnitute of resultant force(kN/m ) :");