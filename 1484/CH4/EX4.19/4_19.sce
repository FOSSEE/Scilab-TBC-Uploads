clc 
//initialisation of variables
L= 150 //ft
w= 20 //ft
t= 5 //min
h= 5 //ft
Cd= 0.6 
Hl= 9 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
T= 2*L*w*sqrt(Hl)/(Cd*t*60*sqrt(2*g))
//RESULTS
printf ('Area of sumberged slice= %.1f sq ft',T)
