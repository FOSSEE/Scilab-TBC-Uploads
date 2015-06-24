V1=60;
R1=20;
I=1;
R2=30;
R3=50;
V2=40;
R4=100;
A=[-1,1,0;-20,-80,50;0,50,-150]           //Matrix of I1,I2,I3 Coeffecients by Mesh analysis
B=[1;-20;-40];
[I]=inv(A)*B;
disp("Amperes",I(3,1),"Current in 100 Ohm resistor");