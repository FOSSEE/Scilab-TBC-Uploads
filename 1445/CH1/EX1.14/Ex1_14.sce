//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 14

clc;
disp("CHAPTER 1");
disp("EXAMPLE 14");

//VARIABLE INITIALIZATION
v=10;                          //voltage source in Volts
I3=-5;                         //current source in Amperes
r1=2;                          //in Ohms
r2=2;                          //in Ohms
r3=4;                          //in Ohms

//SOLUTION
//by loop analysis
//(1)I1+(-1)I2=0.........eq (1)
//(4)I1+(-2)I2=10........eq (2)
//solving the equations by matrix method
A=[1 -1;4 -2]; 
b=[0;10];
x=inv(A)*b;
I1=x(1,:);                     //to access 1st element of 2X1 matrix
I2=x(2,:);                     //to access 2nd element of 2X1 matrix
In=I2-I3;
rn=(r1*r2)/(r1+r2);
I=(rn*In)/(rn+r3); 
disp(sprintf("By Norton Theorem, the current through resistor R3 is %d A",I));

//END

