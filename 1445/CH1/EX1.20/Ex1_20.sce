//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 20

clc;
disp("CHAPTER 1");
disp("EXAMPLE 20");

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
rn=(req*r3)/(req+r3);
//finding In by mesh analysis
//(17)I2+(-4)I3=110.......eq (1)
//(1)I2+(-1)I3=-10........eq (2)
//solving the equations by matrix mehod
A=[17 -4;1 -1];
b=[110;-10];
x=inv(A)*b;
I2=x(1,:);                         //to access the 1st element of 2X1 matrix
I3=x(2,:);                         //to access the 2nd element of 2X1 matrix
In=I3;
I=(rn*In)/(rn+r4);
disp(sprintf("By Norton Theorem, the value of I is %f A",I));

//END 
