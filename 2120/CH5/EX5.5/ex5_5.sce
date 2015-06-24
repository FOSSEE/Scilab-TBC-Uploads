//Exa 5.5
clc;
clear;
close;
//Given data 
m=15;// in kg/min
m= m/60;// in kg/sec
H1= 5;// in kJ/kg
H1= H1*10^3;// in J/kg
H2= 173;// in kJ/kg
H2= H2*10^3;// in J/kg
V1= 5;// in m/s
V2= 7.5;// in m/s
Q= 760;// in kJ/min
Q= Q*10^3/60;// in J/s
// Formula (H1+V1^2/2)+(-Q)= (H2+V2^2/2)+W
W= (H1+V1^2/2)+(-Q)-(H2+V2^2/2);// in W/kg
W= W*10^-3;// in kW/kg
// The work done will be
W= m*W;// in kW
P= abs(W);// in kW
disp(P,"Power of the motor required to drive the compressor in kW is : ")
// Part (b)
v1= 0.5;// in m^3/kg
v2= 0.15;// in m^3/kg
// A1/A2= rho2*V2/(rho1*V1) = v1*V2/(v2*V1)
ratioOFA1andA2= v1*V2/(v2*V1);
radioOFd1andd2= sqrt(ratioOFA1andA2);
disp(radioOFd1andd2,"Ratio of inlet pipe diameter to outlet pipe diameter is : ")
