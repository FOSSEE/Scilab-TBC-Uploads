clear
clc
//initialisation of variables
v= 5 //ft/sec
m= 60/26
i= 1/2000
h= 5.5 //ft
m1= 110/31
d= 3 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
C= v/(sqrt(m*i))
v1= v*d/h
r= (i-(v1^2/(C^2*m1)))/(1-(v1^2/(g*h)))
x= 1/r
//RESULTS
printf ('Distance upstream = %.f ft',x) 

//The answer is a bit different due to rounding off error in textbook


