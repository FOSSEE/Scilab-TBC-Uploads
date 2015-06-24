clc
//initialisation of variables
clear
h1= 3 //ft
h2= 4 //ft
r= 0.95 //m^-1
k= 27.65 //sec
Cd= 0.95
//CALCULATIONS
T= k*(log(r*sqrt(h2)-1)+(r*sqrt(h2)-1))-k*(log(r*sqrt(h1)-1)+(r*sqrt(h1)-1))
h= ((h2-h1)/Cd)^2
//RESULTS
printf ('Time = %.2f sec',T)
printf ('\n Increase in water level = %.2f ft',h)
