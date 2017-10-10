//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 59

disp("CHAPTER 1");
disp("EXAMPLE 59");

//SOLUTION

//I1+I2=20...............eq (1)
//-I1+I2=10..............eq (2)
//solving the simultaneous equations by matrix method

A=[1 1;-1 1];
b=[20;10];
x=inv(A)*b;
x1=x(1,:);               //to access 1st element of 2X1 matrix
x2=x(2,:);               //to access 2nd element of 2X1 matrix
disp(sprintf("Current I1= %d A",x1));
disp(sprintf("Current I2= %d A",x2)); 

//END


