//Example 1_3 page no:22
clc;
V=10;
R1=1;
I1=V/R1;
I2=V/(2+((7*5)/(7+5)));
It=I1+I2;//calculating the total current
V2=2*2;
I5=(2*7)/(5+7);//calculating the current flowing through 5 ohm resistor
disp(I1,"the current flowing through 1 ohm resistor is (in A)");
disp(I2,"the current flowing through series parallel branch between terminals A and C is (in A)");
disp(It,"the total current is (in A)");
disp(V2,"the voltage across 2 ohm resistor is (in V)");
disp(I5,"the current flowing through 5 ohm resistor is (in A)");
