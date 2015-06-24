clc
//initialisation of variables
u= 734 //ft/sec
v= 2000 //ft/sec
g= 32.2 //ft/sec^2
da= 0.019 //kg/m^3
//CALCULATIONS
W= g*v/(v-u)
A= W/(u*da)
//RESULTS
printf ('Weight of the air = %.1f lb/sec',W)
printf ('\n Area of inlet = %.2f ft^2',A)
