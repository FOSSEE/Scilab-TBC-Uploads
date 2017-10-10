//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 13

disp("CHAPTER 1");
disp("EXAMPLE 13");

//VARIABLE INITIALIZATION
v=10;                          //voltage source in Volts
I=5;                           //current source in Amperes
r1=2;                          //in Ohms
r2=2;                          //in Ohms
r3=4;                          //in Ohms

//SOLUTION
res=I+(v/r1);
vth=res/((1/r1)+(1/r2));       //by nodal analysis
rth=(r1*r2)/(r1+r2);
Ith=vth/(rth+r3);
disp(sprintf("By Thevenin Theorem, the current through resistor R3 is %d A",Ith));

//END




