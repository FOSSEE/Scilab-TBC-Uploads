clc ;funcprot(0);
//Example 2.10 

//Initializing the variables
phi = 30; //30 degree
h = 1.2 ; // Height of tank
l = 2;    // Length of tank
g = 9.81;
//Calculations
function[Theta]=SurfaceAngle(a,phi)
    Theta = atand(-a*cosd(phi)/(g+a*sind(phi)));
endfunction

//case (a) a = 4
disp(tand(SurfaceAngle(4,phi)),"Tan of Angle between surface of fluid and horizontal :");
disp(180 + SurfaceAngle(4,phi),"ThetaA (degree):");

//Case (b) a = - 4.5
tanThetaR = tand(SurfaceAngle(-4.5,phi));
disp(tanThetaR,"Tan of Angle between surface of fluid and horizontal :");
disp(SurfaceAngle(-4.5,phi),"ThetaR (degree):");

Depth = h - l*tanThetaR/2;
disp(Depth,"Maximum Depth of tank (m):");