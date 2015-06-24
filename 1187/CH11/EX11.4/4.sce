clc

p=28*10^3; // N/m^2
y=1.4;
M1=2.4;
M2=1;
T0=291; // K
R=287; // J/kg.K

disp("(a) the pressures in the reservoir and at the nozzle throat")

p0=p*(1+(y-1)/2*M1^2)^(y/(y-1));
pc=p0*(1+(y-1)/2*M2^2)^(-y/(y-1));

disp("Pressure in the reservoir =")
disp(p0)
disp("N/m^2")

disp("Pressure at the nozzle throat =")
disp(pc)
disp("N/m^2")

disp("(b) the temperature and velocity of the air at the exit.")

T=T0*(1+(y-1)/2*M1^2)^(-1);

disp("Temperature =")
disp(T)
disp("K")

a=sqrt(y*R*T)

u=M1*a;

disp("Velocity =")
disp(u)
disp("m/s")
