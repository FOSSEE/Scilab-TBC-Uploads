clc ;funcprot(0);
//Example 3.1 

//Initializing the variables
a = 2.7;    //Upper edge
b = 1.2 ;   //Lower edge
width = 1.5;     //Width of trapezoidal plate
h = 1.1;        //Height of water column above surface
rho = 1000;
g = 9.81;//Acceleration due to gravity
phi = 90 ;//Angle between wall and surface

//Calculations
A = 0.5*(a+b)*width;        //Area of Trapezoidal Plate
y = (2*(0.5*width*0.75)*0.5 + (1.2*width)*0.75)/A;
z = y+h; //Depth of center of pressure
R = rho*g*A*z ;//Resultant force

I0 = 1.2*1.5^3/12 +1.2*1.5*1.85^2 + 1.5*1.5^3/36 + 1.5*0.75*1.6^2 ;//Second moment of area
D = (sind(phi))^2*I0/(A*z); //depth of center of pressure
M = R*(1.8533-1.1); //Moment about hinge
disp(M/1000,"Moment about the hinge line (kN/m):")
