//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 21

disp("CHAPTER 1");
disp("EXAMPLE 21");

//VARIABLE INITIALIZATION
I=20;                             //current source in Amperes
v1=10;                            //voltage source in Volts
v2=40;                            //voltage source in Volts
r1=8;                             //in Ohms
r2=5;                             //in Ohms
r3=4;                             //in Ohms
r4=12;                            //in Ohms

//SOLUTION
req=r1+r2;
rth=(req*r3)/(req+r3);
//finding vth by nodal analysis
//(13)v1+(-8)v2=750.......eq (1)
//(-4)v1+(9)v2=200........eq (2)
//solving the equations by matrix mehod
A=[13 -8;-4 9];
b=[750;200];
x=inv(A)*b;
v1=x(1,:);                        //to access the 1st element of 2X1 matrix
v2=x(2,:);                        //to access the 2nd element of 2X1 matrix
vth=v2;
I=vth/(rth+r4);
disp(sprintf("By Thevenin Theorem, the value of I is %f A",I));

//END
