clear;
clc;
funcprot(0);

//given data
Q = 0.1;//in m^3/s
N = 1200;//rotational speed in rev/min
beta2_ = 50;//in deg
D = 0.4;//impeller external diameter in m
d = 0.2;//impeller internal diameter in m
b2 = 31.7;//axial width in mm
eff = 0.515;//diffuser efficiency
H = 0.1;//head losses
De = 0.15;//diffuser exit diameter
A = 0.77;
B = 1;
g = 9.81;

//Calculations
U2 = %pi*N*D/60;
cr2 = Q/(%pi*D*b2/1000);
sigmaB = (A - H*tan(beta2_*%pi/180))/(B - H*tan(beta2_*%pi/180));
ctheta2 = sigmaB*U2*(1-H*tan(beta2_*%pi/180));
Hi = U2*ctheta2/g;
c2 = sqrt(cr2^2 + ctheta2^2);
c3 = 4*Q/(%pi*De^2);
HL = 0.1*Hi + 0.485*((c2^2)-(c3^2))/(2*g) + (c3^2)/(2*g);
H = Hi - HL;
eff_hyd = H/Hi;

//Results
printf('The slip factor = %.3f.',sigmaB);
printf('\n The manometric head = %.1f m.',H);
printf('\n The hydraulic efficiency = %.1f percentage.',eff_hyd*100);

//there is a very small error in the answer given in textbook
