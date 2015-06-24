V=50;
R1=10;
R2=5;
R3=3;
R4=2;
R5=1;
I=2;
A=[0,1,-1;15,-12,-6;-15,10,5]           //Matrix of I1,I2,I3 Coeffecients by Mesh analysis
B=[2;0;-50];
[I]=inv(A)*B;
disp("Amperes",(I(1,1)-I(3,1)),"Current in 5 Ohm resistor");