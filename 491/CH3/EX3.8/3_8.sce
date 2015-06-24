d = 0.05 ; // diameter of the shaft
Lab = 1 ; // Length of shaft ab in meter
Lbc = 1.2 ; // Length of shaft bc in meter
Pa = 50000; // Power in Watt at A
Pb = 35000; // Power in Watt at B
Ip = (%pi/32)*(d^4) ; // Polar moment of inertia
Pc = 15000; // Power in Watt at C
G = 80e09; // Modulus of elasticity
f = 10 ; // frequency in Hz 
Ta = Pa/(2*%pi*f) // Torque in N-m at A
Tb = Pb/(2*%pi*f) // Torque in N-m at B
Tc = Pc/(2*%pi*f) // Torque in N-m at B
Tab = Ta ; // Torque in N-m in shaft ab
Tbc = Tc ; // Torque in N-m in shaft bc
tab = (16*Tab)/(%pi*(d^3)) ; // shear stress in ab segment
fab = (Tab*Lab)/(G*Ip); // angle of twist in radian
tbc = (16*Tbc)/(%pi*(d^3)); // shear stress in ab segment
fbc = (Tbc*Lbc)/(G*Ip); // angle of twist in radian
fac = (fab+fbc)*(180/%pi);  // angle of twist in degree in segment ac
tmax = Tab;  // Maximum shear stress
disp("Nm",tmax,"The maximum shear stress tmax in the shaft")
disp("degree",fac,"Angle of twist in segment AC")