clc; funcprot(0); //Example 10.2

//Initializing the variables
mu = 0.9;
rho = 1260;
d = 0.01;
Q = 1.8/60*10^-3; //Flow in m^3 per second
l = 6.5;
ReCrit = 2000;
//Calculations
A = (%pi*d^2)/4;
MeanVel = Q/A;
Re = rho*MeanVel*d/mu; // Check properly the answer in book there is something wrong
Dp = 128*mu*l*Q/(%pi*d^4)
Qcrit = Q*ReCrit/Re*10^3;
disp(Qcrit, "Maximum Flow rate(litres/s) :", Dp/1000 , "Pressure Loss (N/m2) :");