//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 11

clc;
disp("CHAPTER 1");
disp("EXAMPLE 11");

//VARIABLE INITIALIZATION
I3=-5;                              //direction of I3 is opposite to the current which flows from the current source

//SOLUTION

//using mesh analysis, the following equations are obtained
//(4)I1+(-2)I2=10...........eq (1)  
//(-2)I1+(6)I2=-20..........eq (2)
//solving the two equations using matrix method
A=[4 -2; -2 6]; 
b=[10;-20];
x=inv(A)*b;
I1=x(1,:);                          //to access 1st element of 2X1 matrix
I2=x(2,:);                          //to access 2nd element of 2X1 matrix
I=I2-I3;
disp(sprintf("By mesh analysis, the current through resistor R3 is %d A",I));

//END

