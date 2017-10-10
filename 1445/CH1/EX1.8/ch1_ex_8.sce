//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 8

disp("CHAPTER 1");
disp("EXAMPLE 8");

//VARIABLE INITIALIZATION
I=2;                              //current source in Amperes
r1=1/2;                           //in Ohms
r2=1/2;                           //in Ohms

//SOLUTION
//current source 2 A is converted into two 1V sources
v1=I*r1;     
v2=I*r2;
disp(sprintf("The voltage sources after conversion are %d V and %d V",v1,v2));
//(5/2)I1+(-1)I2=0........eq (1)
//(-1)I1+(7/2)I2=2........eq (2)
//using matrix method to solve the set of equations
A=[5/2 -1;-1 7/2];
b=[2;2];
x=inv(A)*b;
x=x(2,:);
disp(sprintf("The current in 2Ω resistor is %f A",x));

//END
