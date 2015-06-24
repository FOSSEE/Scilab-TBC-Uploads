clc 
//initialisation of variables
va= 4 //ft/sec
g= 32.2 //ft/sec^2
H= 1.25 
l= 10 //ft
w= 62.4 //lbs/ft^3
p= 60 //per cent
l1= 90 //ft
//CALCULATIONS
ha= va^2/(2*g)
Q= 3.333*(l-0.1*2*(H+ha))*((H+ha)^1.5-ha^1.5)*w
E= Q*l1
HP= E*60/(100*550)
//RESULTS
printf ('H.P available= %.1f H.P',HP)
