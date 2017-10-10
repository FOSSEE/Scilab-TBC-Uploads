//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 23

disp("CHAPTER 1");
disp("EXAMPLE 23");

//VARIABLE INITIALIZATION
I1=20;                            //current source in Amperes
v1=10;                            //voltage source in Volts
v2=40;                            //voltage source in Volts
r1=8;                             //in Ohms
r2=5;                             //in Ohms
r3=4;                             //in Ohms
r4=12;                            //in Ohms

//SOLUTION
//(17)I2+(-4)I3=110.......eq (1)
//(-4)v1+(16)I3=40........eq (2)
//solving the equations by matrix mehod
A=[17 -4;-4 16];
b=[110;40];
x=inv(A)*b;
I2=x(1,:);                         //to access the 1st element of 2X1 matrix
I3=x(2,:);                         //to access the 2nd element of 2X1 matrix
disp(sprintf("By Nodal analysis, the value of I is %f A",I3));

//END
