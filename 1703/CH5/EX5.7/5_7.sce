clear
clc
//initialisation of variables
m= 60/26
i= 1/2000
h1= 3 //ft
h2= 5 //ft
m1= 10/3
C= 90
l= 500 //ft
H= 20 //ft
H1= 29.62 //ft
g= 32.2 //ft/s^2
//CALCULATIONS
v= 90*sqrt(m*i)
v1= v*h1/h2
dh= (i-(v1^2/(C^2*m1)))*l/(1-v1^2/(g*h2))
h3= h2-dh
V= h1*v/h3
//RESULTS
printf ('Height of water 1000 ft upstream = %.3f ft',h3) 
printf ('\n Height of water upstream = %.3f ft',h3) 

//The answer is a bit different due to rounding off error in textbook

