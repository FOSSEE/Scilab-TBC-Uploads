//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 35

disp("CHAPTER 1");
disp("EXAMPLE 35");

//VARIABLE INITIALIZATION
I=10;                           //current source in Amperes
v=10;                           //voltage source in Volts
r1=4;                           //top resistance in Ohms
r2=4;                           //right resistance in Ohms
r3=4;                           //bottom resistance in Ohms
r4=6;                           //left resistance in Ohms
r5=1;                           //in Ohms

//SOLUTION
res=I+(v/r1);                   //'res' is used to make calucations easy  
va=res/((1/r4)+(1/r1));         //applying nodal analysis at node 1
vb=(v/r2)/((1/r2)+(1/r3));      //applying nodal analysis at node 2
vth=va-vb;
req1=(r1*r4)/(r1+r4);
req2=(r2*r3)/(r2+r3);
rth=req1+req2;
Ith=vth/(rth+r5); 
disp(sprintf("By Thevenin Theorem, the current through the 1Ω resistor is %.3f A",Ith));

//END
