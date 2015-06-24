R1=2;                     //Assigning values to parameters
R2=3;
R3=4;
R4=5;
R5=1;
A=[3,-3;9,12]           //Matrix of I1,I2 by KVL equations
B=[2;4]
[I]=inv(A)*B           // I matrix has I1 and I2 values
disp("Amperes",[I],"Current in 1 Ohm resistor:Row 1 and Column 1, Current in 3 Ohm resistor:Row 2,Column 1");
IR1=1-I(1,1);
IR3=1-I(1,1)-I(2,1);
IR4=I(1,1)+I(2,1)
disp("Amperes",IR1,"Current in 2 Ohm resistor");
disp("Amperes",IR3,"Current in 4 Ohm resistor");
disp("Amperes",IR4,"Current in 5 Ohm resistor");