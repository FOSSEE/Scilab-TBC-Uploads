clc;
Qs=0.4; // m^3/s
H1=1.5; // m
Q=0.2; // m^3/s
H2=0.5; // m
l=15; // m
b=10; // m
A=l*b; 

k=Qs*H1^(-1/2);


t=-2*A/k^2 *(Q*log((Q-k*(H2)^0.5)/(Q-k*(H1)^0.5))+k*((H2)^0.5-(H1)^0.5));
disp("The time required for the level in the tank to fall to 1 m is ")
disp(t)
disp("second")