//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 33

disp("CHAPTER 1");
disp("EXAMPLE 33");

//VARIABLE INITIALIZATION
I=10;                           //current source in Amperes
v=10;                           //voltage source in Volts
r1=4;                           //top resistance in Ohms
r1=4;                           //right resistance in Ohms
r3=4;                           //bottom resistance in Ohms
r4=6;                           //left resistance in Ohms
r5=1;                           //in Ohms

//SOLUTION

//by applying nodal analysis at node 1, the following equations are obtained:
//(17)v1+(-12)v2=150.......eq (1)
//(-4)v1+(6)v2=10..........eq (2)
//solving the equations by matrix method

A=[17 -12;-4 6];
b=[150;10];
x=inv(A)*b;
v1=x(1,:);                       //to access the 1st element of 2X1 matrix
v2=x(2,:);                       //to access the 1st element of 2X1 matrix
if(v1>v2) then
I=(v1-v2)/r5;
disp(sprintf("By nodal analysis, the current through 1Ω resistor is %.3f A",I));
else
I=(v2-v1)/r5;
disp(sprintf("By nodal analysis, the current through 1Ω resistor is %.3f A",I));
end;

//END
