//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 59

clc;
disp("CHAPTER 1");
disp("EXAMPLE 59");

//SOLUTION

//I1+I2=20...............eq (1)
//-I1+I2=10..............eq (2)
//solving the simultaneous equations by matrix method

A=[1 1;-1 1];
b=[20;10];
I=inv(A)*b;
I1=I(1,:);               //to access 1st element of 2X1 matrix
I2=I(2,:);               //to access 2nd element of 2X1 matrix
disp(sprintf("Current I1= %d A",I1));
disp(sprintf("Current I2= %d A",I2)); 

//END


