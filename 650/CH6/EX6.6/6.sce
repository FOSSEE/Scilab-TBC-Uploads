clc
Cd=0.62;
a=0.01; // m^2
g=9.81; // m/s^2
H=0.3; // m
A1=4*2; // m^2
H1=0.3; // m
H2=0.1; // m
A2=2*2; // m^2

Q=Cd*a*sqrt(2*g*H);
disp("The rate of flow =")
disp(Q)
disp("m^3/s")

t=2*A1*(H1^(1/2)-H2^(1/2))/(Cd*a*sqrt(2*g)*(1+A1/A2));
disp("The time taken to reduce the difference in levels to 10 cm is ")
disp(t)
disp("s")