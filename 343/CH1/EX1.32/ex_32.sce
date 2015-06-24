A=[0,6,-2;3,4,1;1,2,-4]           //Matrix of I1,I2,I3 Coeffecients by KVL equations
B=[9;24;-4];
[I]=inv(A)*B;
disp("Amperes",I(2,1),"Current in 20 Ohm resistor");