// Exa 1.1
clc;
clear;
close;
format('v',5)
// Given data
R1=4;// in ohm
R2= 6;// in ohm
R3= 2;// in ohm
V1= 24;// in V
V2= 12;// in V
// Applying KVL in Mesh ABEFA, V1 = (R1+R3)*I1 - R3*I2    (i)
// Applying KVL in Mesh BCDEB, V2 = R3*I1 - (R2+R3)*I2   (ii)
A= [(R1+R3) R3;-R3 -(R2+R3)];// assumed
B= [V1 V2];// assumed
I= B*A^-1;// Solving equations by matrix multiplication
I1= I(1);// in A
I2= I(2);// in A
disp(I1,"The current through 4 ohm resistor in A is");
// current through 2 ohm resistor 
I= I1-I2;// in A
disp(I,"The current through 2 ohm resistor in A is");
disp(I2,"The current through 6 ohm resistor in A is");
disp("That is "+string(abs(I2))+" A current flows in 6 ohm resistor from C to B")

