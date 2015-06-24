clc;funcprot(0);
//Example 3.7 

//Initializing the variables
l = 20;     // Length of barage
b = 6;       //Width of barage
r = 3;   //Radius of circular top of barage
W = 200*10^3;    //Weight of empty barage
d1 = 0.8;      // Depth of water in 1st half
d2 = 1;          // Depth of water in 2nd half
rho = 1000;    //Density of water
R = 0.8;     //Relative density of liquid
g = 9.81;      //Acceleration due to gravity
ZG = 0.45;        // Center of gravity of barage

//Calculations
I00 = l*b^3/12 +%pi*b^4/128;
ICC = l*(.5*b)^3/12;
L = d1*rho*g*l*b/2*(d1+d2);     // Weight of liquid load
W# = L + W;             //Total weight
A = l*b +%pi*r^2/2;     // Area of plane of waterline
V = W#/(rho*g);        // Volume of vessel submerged
D = V/A ;            //Depth submerged
ZB = .5*D;         //Height of center of buoyancy
NM = ZB-ZG +(1/V)*(I00-R*2*ICC);            // Effective metacentric height
P = R*rho*g*l*b/2*(d2-d1);     //overturning moment 
theta = atand(P*1.5/(W#*NM));     //Angle of roll

disp(theta,"Angle of roll (Degree) :");