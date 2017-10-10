//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 13

clc;
disp("CHAPTER 1");
disp("EXAMPLE 13");

//VARIABLE INITIALIZATION
v=10;                          //voltage source in Volts
I=5;                           //current source in Amperes
r1=2;                          //in Ohms
r2=2;                          //in Ohms
r3=4;                          //in Ohms

//SOLUTION
//solving by nodal analysis
res=I+(v/r1);                  //'res' is used to make the calculation easy
vth=res/((1/r1)+(1/r2));       //Thevenin voltage
rth=(r1*r2)/(r1+r2);	       //Thevenin resistance
Ith=vth/(rth+r3);	       //Thevenin current
disp(sprintf("By Thevenin Theorem, the current through resistor R3 is %d A",Ith));

//END




