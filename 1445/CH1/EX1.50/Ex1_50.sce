//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 50

disp("CHAPTER 1");
disp("EXAMPLE 50");

//SOLUTION
//(5)I1+(-3)I2=10..........eq (1)
//(-3)I1+(34)I2=40.........eq (2)
A=[5 -3;-3 34];
b=[10;40];
x=inv(A)*b;
I1=x(1,:);                 //to access the 1st element of 2X1 matrix
I2=x(2,:);                 //to access the 2nd element of 2X1 matrix 
I=I2-I1;
disp(sprintf("Current i1 is %.2f A (loop EFAB)",I1));
disp(sprintf("Current i2 is %.2f A (loop BCDE)",abs(I)));

//END


