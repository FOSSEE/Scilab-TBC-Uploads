//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 6

disp("CHAPTER 1");
disp("EXAMPLE 6");

//VARIABLE INITIALIZATION
non=4;                                //number of nodes
nob=6;                                //number of branches

//SOLUTION
nome=nob-non+1;                       //number of mesh equations
disp(sprintf("Number of mesh equations are %d",nome));
none=non-1;
disp(sprintf("Number of node equations are %d",none));

//(5/2)I1+(-2)I2+(-1/2)I3=4.....eq (1)
//(0)I1+(0)I2+(1)I3=-2..........eq (2)
//(-2)I1+(10/3)I2+(-1/3)I3=0....eq (3)          
//using matrix method to solve the set of equations
A=[5/2 -2 -1/2;-2 10/3 -1/3;0 0 1];
b=[4;0;-2];
x=inv(A)*b;
I=x(1,:);                              //to access the 1st element of 3X1 matrix
disp(sprintf("The current from the source V is %d A",I));

//END
