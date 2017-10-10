//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 29

clc;
disp("CHAPTER 1");
disp("EXAMPLE 29");

//VARIABLE INITIALIZATION
I=5;                           //current source in Amperes
v=100;                         //voltage source in Volts
r1=20;                         //in Ohms
r2=10;                         //in Ohms
r3=20;                         //in Ohms

//SOLUTION

//activating current source
I1=(I*r1)/(r1+r2);             //by current divider law

//activating voltage source
I2=-(v/(r1+r2));

I_tot=I1+I2;
disp(sprintf("By Superposition Theorem, the value of I is %d A",I_tot));

//END
