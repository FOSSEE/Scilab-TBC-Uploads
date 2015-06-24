//Exa 4.12
clc;
clear;
close;
//given data
D=10*10^-2;// in m
b=D/2;
h= 100;// in W/m^2 degree C
T_o=418;// in degree C
T_i=30;// in degree C
T_infinite=1000;// in degree C

disp(" (A) For copper cylinder ");
k=350;// in W/mK
alpha=114*10^-7;// in m^2/s
Bi= h*b/k;
theta_0_t = (T_o-T_infinite)/(T_i-T_infinite);
Fo=18.8;
// Formula Fo= alpha*t/b^2
t=Fo*b^2/alpha;
disp("Time required to reach for the cylinder centreline temperature 418 degree C : "+string(t)+" seconds or "+string(t/3600)+" hours")

// (2) Temperature at the radius of 4 cm
theta_0_t = 0.985;
// Formula theta_0_t = (T-T_infinite)/(T_o-T_infinite)
T= theta_0_t*(T_o-T_infinite)+T_infinite;// in degree C
disp(T,"Temperature at the radius of 4 cm ") 
disp("It has very less temperature gradients over 4 cm radius")

disp(" (B) For asbestos cylinder ");
k=0.11;// in W/mK
alpha=0.28*10^-7;// in m^2/s
Bi= h*b/k;
theta_0_t = (T_o-T_infinite)/(T_i-T_infinite);
Fo=0.21;
// Formula Fo= alpha*t/b^2
t=Fo*b^2/alpha;
disp("Time required to reach for the cylinder centreline temperature 418 degree C : "+string(t)+" seconds or "+string(t/3600)+" hours")

// (2) Temperature at the radius of 4 cm
theta_x_t = 0.286;
// Formula theta_x_t = (T-T_infinite)/(T_o-T_infinite)
T= theta_x_t*(T_o-T_infinite)+T_infinite;// in degree C
disp(T,"Temperature at the radius of 4 cm ") 
disp("It has large temperature gradients")
