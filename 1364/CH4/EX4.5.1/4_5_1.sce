clc
//initialisation of variables
C= 0.6
s= 0.0767 //lbf/ft^3
g= 32.2 //ft/sec^2
w= 62.4 //lbf/ft^3
Hw= 0.7 //in
//CALCULATIONS
Ha= Hw*w/(s*12)
Q= C*%pi*sqrt(2*g*Ha)/144
//RESULTS
printf (' volumetric flow rate = %.3f ft^3/sec ',Q)
