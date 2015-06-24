
clc
//initialisation of variables
Q= 140 //cuses
w= 62.4 //lb/ft^3
l= 140 //ft
P= 70 //percent
k= 1.6
v= 3*10^8
//CALCULATIONS
rv= k*v
HP= Q*l*w*(P/1000)/550
//RESULTS
printf ('Required size of reservoir = %.1e ft^3 ',rv)
printf ('\n horsepower = %.f h.p ',HP)
