//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 10

clc;
disp("CHAPTER 1");
disp("EXAMPLE 10");

//VARIABLE INITIALIZATION
v=10;                          //voltage source in Volts
I=5;                           //current source in Amperes
r1=2;                          //in Ohms
r2=2;                          //in Ohms
r3=4;                          //in Ohms

//SOLUTION
res=I+(v/r1); 
v1=res/((1/r1)+(1/r2)+(1/r3));
I1=v1/r3;
disp(sprintf("By Nodal analysis, the current through resistor R3 is %d A",I1));

//END

