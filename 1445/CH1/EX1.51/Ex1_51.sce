//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 51

disp("CHAPTER 1");
disp("EXAMPLE 51");

//SOLUTION
//(9)I1+(-5)I2+(-3)I3=5..........eq (1)
//(-5)I1+(8)I2+(-1)I3=5..........eq (2)
//(-3)I1+(-1)I2+(6)I3=3..........eq (3)
A=[9 -5 -3;-5 8 -1;-3 -1 6];
b=[5;5;3];
x=inv(A)*b;
I1=x(1,:);                 //to access the 1st element of 3X1 matrix
I2=x(2,:);                 //to access the 2nd element of 3X1 matrix 
I3=x(3,:);                 //to access the 3rd element of 3X1 matrix 
disp(sprintf("Current i1 is %.2f A (loop ABGH)",I1));
disp(sprintf("Current i2 is %.2f A (loop BCDH)",I2));
disp(sprintf("Current i3 is %.2f A (loop GDEF)",I3));

//END


