clc 
//initialisation of variables
Cd= 0.6
g= 32.2 //ft/sec^2
o= 90 //degrees
H= 2 //ft
A= 15.2 //ft^2
//CALCULATIONS
Q= 8*Cd*sqrt(2*g)*tand(o/2)*H^2.5/15
va= Q/A
ha= va^2/(2*g)
Q1= 8*Cd*sqrt(2*g)*((H+ha)^2.5-ha^2.5)/15
//RESULTS
printf ('Discharge of stream= %.1f cuses',Q1)
