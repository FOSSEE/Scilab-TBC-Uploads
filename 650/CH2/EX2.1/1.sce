clc
Q1=0.02; //m^3/s
d1=0.15; //m
d2=0.05; //m
d3=0.1; //m
v2=3; //m/s


v3=(4*Q1/%pi-d2^2*v2)/d3^2;
disp("velocity at pipe 3 =")
disp(v3)
disp("m/s")

Q3=%pi*d3^2/4*v3;
disp("Flowrate at pipe 3 =")
disp(Q3)
disp("m^3/s")

Q2=%pi*d2^2/4*v2;
disp("Flowrate at pipe 2")
disp(Q2)
disp("m^3/s")

disp("Velocity at pipe 2")
disp(v2)
disp("m/s")

v1=4*(Q2+Q3)/%pi/d1^2;
disp("Velocity at pipe 1 =")
disp(v1)
disp("m/s")

disp("Flowrate at pipe 1")
disp(Q1)
disp("m^3/s")