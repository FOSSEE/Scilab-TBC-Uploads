//1 inches = 0.0254meters
//1 foot = 0.3048 meters
d = 0.1*0.0254; // diameter of the wire in meters
L = 10*0.3048; //length of the wire in meters 
rho = 1.724*10^-8; // resistivity of the wire in ohm-meter
A = %pi*(d/2)^2; // cross sectional area of the wire 
R = rho*L/A; //resistance of the wire in ohm 
disp(R,"resistance of the wire (in ohm)=")