//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 34

clc;
disp("CHAPTER 1");
disp("EXAMPLE 34");

//VARIABLE INITIALIZATION
I=10;                           //current source in Amperes
v=10;                           //voltage source in Volts
r1=4;                           //top resistance in Ohms
r1=4;                           //right resistance in Ohms
r3=4;                           //bottom resistance in Ohms
r4=6;                           //left resistance in Ohms
r5=1;                           //in Ohms

//SOLUTION

//activating the current source
//(17)v1+(-12)v2=120.......eq (1)
//(-4)v1+(6)v2=0...........eq (2)
//solving the equations by matrix method
A=[17 -12;-4 6];
b=[120;0];
x=inv(A)*b;
v1=x(1,:);                       //to access the 1st element of 2X1 matrix
v2=x(2,:);                       //to access the 1st element of 2X1 matrix
if(v1>v2) then
I1=(v1-v2)/r5;
else
I1=(v2-v1)/r5;
end;

//activating the voltage source
//(17)v1+(-12)v2=30.......eq (1)
//(-4)v1+(6)v2=10...........eq (2)
//solving the equations by matrix method
A=[17 -12;-4 6];
b=[30;10];
x=inv(A)*b;
v3=x(1,:);                       //to access the 1st element of 2X1 matrix
v4=x(2,:);                       //to access the 1st element of 2X1 matrix
if(v3>v4) then
I2=(v3-v4)/r5;
else
I2=(v4-v3)/r5;
end;

I_tot=I1+I2;
disp(sprintf("By Superposition Theorem, the current through 1Ω resistor is %f A",I_tot));

//END
