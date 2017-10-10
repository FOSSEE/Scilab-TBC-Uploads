//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 12

clc;
disp("CHAPTER 1");
disp("EXAMPLE 12");

//VARIABLE INITIALIZATION
v=10;                              //voltage source in Volts
I=5;                               //current source in Amperes
r1=2;                              //in Ohms
r2=2;                              //in Ohms
r3=4;                              //in Ohms

//SOLUTION

//deactivating current source
v1=(v/r1)/((1/r1)+(1/r2)+(1/r3));  //using nodal analysis
I1=v1/r3;

//deactivating voltage source
v2=I/((1/r1)+(1/r2)+(1/r3));       //using nodal analysis
I2=v2/r3;
I_tot=I1+I2;                       //applying Superposition Theorem (I1 and I2 are in same direction) 

disp(sprintf("By Superposition Theorem, the current through resistor R3 is %d A",I_tot));

//END
