// Example 2_3
clc;funcprot(0);
// Given data
D=1;// The diameter of a circular flat plate in m
h=3;// Distance in m
theta=45;// Angle in degrees
rho=1*10^3;// The density of water in kg/m^3
g=9.807;// The acceleration due to gravity in m/s^2

// Calculation
p_c=rho*g*h;// The gage pressure at the plate centroid in Pa
A=(%pi*D^2)/4;// Area in m^2
F=p_c*A;// The total force exerted on the plate by the water in N
printf("\nThe total force exerted on the plate by the water,F=%1.3e N",F);
y_cp=-(rho*g*D^2)/(16*sqrt(2)*p_c);// The distance between the center of pressure cp and the centroid of the circular plate in m
printf("\nThe distance between the center of pressure cp and the centroid of the circular plate,y_cp=%1.3e m",y_cp);
