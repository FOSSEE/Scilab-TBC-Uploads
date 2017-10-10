//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 32

disp("CHAPTER 1");
disp("EXAMPLE 32");

//VARIABLE INITIALIZATION
I=10;                           //current source in Amperes
v=10;                           //voltage source in Volts
r1=4;                           //top resistance in Ohms
r1=4;                           //right resistance in Ohms
r3=4;                           //bottom resistance in Ohms
r4=6;                           //left resistance in Ohms
r5=1;                           //in Ohms

//SOLUTION
//without converting the current source into voltage source
//(10)I1+(-4)I2+(0)I3=50........eq (1)
//(-4)I1+(9)I2+(-4)I3=0.........eq (2)
//(0)I1+(-4)I2+(8)I3=10.........eq (3)
//solving the equations by matrix method
A=[10 -4 0;-4 9 -4;0 -4 8];
b=[50;0;10];
x=inv(A)*b;
I2=x(2,:);                       //to access the 2nd element of 3X1 matrix
disp(sprintf("By Mesh analysis, the current through 1Ω resistor is %f A",I2));

//END 


