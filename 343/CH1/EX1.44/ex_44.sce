A=[-6,3;3,-10.5]           //Matrix of I1,I2 Coeffecients by Mesh analysis
B=[-12.5;0];
[I]=inv(A)*B;
disp("Amperes",I(1,1),"Current in 1 Ohm resistor");