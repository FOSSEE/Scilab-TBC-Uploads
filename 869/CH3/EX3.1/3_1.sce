clc
//initialisation of variables
W= 3000 //lb
L= 10 //ft
Wf1= 1200 //lb
Wf2= 1500 //lb
angle= 30 //degrees
//CALCULATIONS
d1= Wf1*cosd(angle)*L/W
d2= Wf2*L/W
xbc= d1/cosd(angle)
xab= d2-xbc
y= xab/tand(angle)
//RESULTS
printf ('x = %.2f ft',d2)
printf (' \n y=%.1f ft',y)
