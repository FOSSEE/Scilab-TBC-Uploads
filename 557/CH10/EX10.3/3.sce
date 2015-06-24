clc; funcprot(0);//Example 10.3 

//Initializing the variables
mu = 1.14*10^-3;
rho = 1000;
d = 0.04;
Q = 4*10^-3/60; //Flow in m^3 per second
l = 750;
ReCrit = 2000;
g = 9.81;
k = 0.00008; // Absolute Roughness

//Calculations
A = (%pi*d^2)/4;
MeanVel = Q/A;
Re = rho*MeanVel*d/mu;
Dp = 128*mu*l*Q/(%pi*d^4);
hL = Dp/(rho*g);
f = 16/Re;
hlDa = 4*f*l*MeanVel^2/(2*d*g); // By Darcy Equation
Pa = rho*g*hlDa*Q;

//Part(b)
Q = 30*10^-3/60; //Flow in m^3 per second
MeanVel = Q/A;
Re = rho*MeanVel*d/mu;
RR = k/d; // relative roughness
f = 0.008 ;//by Moody diagram for Re =  1.4 x 10^4  and relative roughness = 0.002
hlDb = 4*f*l*MeanVel^2/(2*d*g); // By Darcy Equation
Pb = rho*g*hlDb*Q;
disp(Pb, "Power Required (W) :",hlDb , "Head Loss(m) :","!---- Case(b) ----!",Pa, "Power Required(W) :",hlDa*1000 , "Head Loss(mm) :", "!---- Case (a) ----!");