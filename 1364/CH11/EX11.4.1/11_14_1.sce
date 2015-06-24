clc
//initialisation of variables
w= 62.3 //lb/ft^3
g= 32.2//ft/se^2
k= 3*10^5 //lbf/in^2
u= 10//ft/sec
//CALCULATIONS
P= u*sqrt(w*k/g)/12
//RESULTS
printf (' Rise in pressure = %.f lbf/in^2',P)
