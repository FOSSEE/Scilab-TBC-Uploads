//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 45

clc;
disp("CHAPTER 1");
disp("EXAMPLE 45");

//VARIABLE INITIALIZATION
w=5*1000;                      //power consumed by coil in Watts
v=200;                         //applied voltage in Volts

//SOLUTION
r=(v^2)/w;                     //since w=(v^2)/r
disp(sprintf("Value of resistance is %d Ω",r));

//END
