

clc
//initialisation of variables
clear
k= 3.33
l= 10 //ft
x= 2 //ft
A= 30 //ft^2
g= 32.2 //ft/sec^2
//CALCULATIONS
Q= k*(l-0.2*x)*x^1.5
V= Q/A
h= V^2/(2*g)
Q1= k*(l-0.2*(x+h))*((x+h)^1.5-h^1.5)
va= Q1/A
ha= va^2/(2*g)
Q2=  k*(l-0.2*(x+ha))*((x+ha)^1.5-ha^1.5)
//RESULTS
//RESULTS
printf ('Discharge in franccis formula= %.2f cusecs',Q1)
printf ('\n Discharge in corrected franccis formula= %.2f cusecs',Q2)
