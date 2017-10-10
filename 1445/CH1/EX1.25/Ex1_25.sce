//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 25

clc;
disp("CHAPTER 1");
disp("EXAMPLE 25");

//SOLUTION
//(1)I1+(0)I2+(0)I3=5.............eq (1)
//(-20)I1+(50)I2+(-20)I3=0........eq (2)
//(0)I1+(1)I2+(-1)I3=5............eq (3)
//solving the equations by matrix mehod
A=[1 0 0;-20 50 -20;0 1 -1];
b=[5;0;5];
x=inv(A)*b;
I1=x(1,:);                         //to access the 1st element of 3X1 matrix
I2=x(2,:);                         //to access the 2nd element of 3X1 matrix
I3=x(3,:);                         //to access the 3rd element of 3X1 matrix
I=I2;
disp(sprintf("By Mesh analysis, the value of I is %d A",I));

//END 

