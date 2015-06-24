clc 
//initialisation of variables
l= 80 //ft
w= 12 //ft
t= 3 //min
Hl= 12 //ft
g= 32.2 //ft/sec^2
Cd= 0.6
//CALCULATIONS
s= sqrt(2*l*w*Hl^(1/2)/(Cd*sqrt(2*g)*t*60))
//RESULTS
printf ('side of the square orifice = %.2f ft',s)
