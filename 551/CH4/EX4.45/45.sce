clc
h1=2800*10^3; //J/kg
C1=50; //m/s
A1=900*10^(-4); //m^2
v1=0.187; //m^3/kg
h2=2600*10^3; //J/kg
v2=0.498; //m^3/kJ
disp("(i) Velocity at exit of the nozzle")
C2=sqrt(2*[(h1-h2) + C1^2/2]);

disp("C2=")
disp(C2)
disp("m/s")


disp("(ii) Mass flow rate")
m=A1*C1/v1;
disp("m=")
disp(m)
disp("kg/s")


disp("(iii) Area at the exit")
A2=m*v2/C2*10^4;
disp("A2=")
disp(A2)
disp("cm^2")