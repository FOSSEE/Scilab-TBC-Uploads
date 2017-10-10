//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 15

clc;
disp("CHAPTER 1");
disp("EXAMPLE 15");

//VARIABLE INITIALIZATION
v=7;                            //voltage source in Volts
I=7;                            //current source in Amperes
r3=1;                           //in Ohms

//SOLUTION
//(1)I1+(-4)I2+(4)I3=7............eq (1)
//(-1)I1+(6)I2+(-3)I3=0...........eq (2)
//(1)I1+(0)I2+(-1)I3=7............eq (3)
//solving the equations by matrix method
A=[1 -4 4;-1 6 -3;1 0 -1];
b=[7;0;7];
x=inv(A)*b;
I1=x(1,:);                      //to access the 1st element of 3X1 matrix
I2=x(2,:);                      //to access the 2nd element of 3X1 matrix
I3=x(3,:);                      //to access the 3rd element of 3X1 matrix
vx=-(I3*r3);
disp(sprintf("By Mesh analysis, the value of Vx is %d V",vx));

//END 
