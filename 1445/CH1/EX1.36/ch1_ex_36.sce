//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 36

disp("CHAPTER 1");
disp("EXAMPLE 36");

//VARIABLE INITIALIZATION
I=10;                              //current source in Amperes
v=10;                              //voltage source in Volts
r1=4;                              //top resistance in Ohms
r2=4;                              //right resistance in Ohms
r3=4;                              //bottom resistance in Ohms
r4=6;                              //left resistance in Ohms
r5=1;                              //in Ohms

//SOLUTION
//(1)v1+(12/5)In=30........eq (1)
//(2)v1+(-4)In=10..........eq (2)
A=[1 12/5;2 -4];
b=[30;10];
x=inv(A)*b;
v1=x(1,:);                          //to access the 1st element of 2X1 matrix 
In=x(2,:);                          //to access the 2nd element of 2X1 matrix
req1=(r1*r4)/(r1+r4);
req2=(r2*r3)/(r2+r3);
rn=req1+req2;
I1=(rn*In)/(rn+r5); 
disp(sprintf("By Norton Theorem, the current through 1Ω resistor is %f A",I1));

//END
