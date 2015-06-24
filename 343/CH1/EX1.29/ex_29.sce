R1=3;                   //Assigning values to parameters
R2=2;
R3=4;
V1=35;
V2=40;
A=[5,2;3,-4]           //Matrix of I1,I2 by KVL equations
B=[35;-5]
[I]=inv(A)*B           // I matrix has I1 and I2 values
disp("Amperes",I(1,1),"Current in 3 ohm resistor");
disp("Amperes",I(2,1),"Current in 4 ohm resistor");
I3=I(1,1)+I(2,1)
disp(,"Amperes",I3,"Current in 2 ohm resistor");