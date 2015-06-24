clc; funcprot(0); //Example 12.5 

//Initializing the variables
muO = 0.0027;
Vt = 3*10^-3;
rhoW = 1000;
rhoP = 2.4*rhoW;
rhoO = 0.9*rhoW;
g = 9.81;
muA = 1.7*10^-5;
rhoA = 1.3;

//Calculations
d = sqrt(18*muO*Vt/(rhoP-rhoO)/g);
Re = Vt*d*rhoO/muO;

//Movement of particle in upward direction
if(Re < 1 ) then
    v = 0.5;
    Re = 5 ; // from fig 12.15
    vt = muA*Re/(rhoA*d);
    u = vt+v;
    disp(u ,"Velocity of air stream blowing vertically up (m/s) :");
else
    disp("strokes law is not valid");
end