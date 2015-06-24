clc 
//initialisation of variables
de= 19 //in
di= 18 //in
Q= 8.84 //cuses
k= 3*10^5 //lbs/in^2
E= 3*10^7 //lbs/in^2
w= 62.4 //lbs/ft^3
g= 32.2 //ft/sec^2
//CALCULATIONS
t= (de-di)/2
v= Q*4/(%pi*(di/12)^2)
k1= k*144
E1= E*144
r=di/24
//CALCULATIONS
p= (v*sqrt(w/(g*((1/k1)+(2*r*24/E1))))-248)*r*24/144
//RESULTS
printf ('stress produced in the pipe= %.f lbs/in^2',p)
