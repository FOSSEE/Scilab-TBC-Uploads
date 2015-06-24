clc 
//initialisation of variables
d1= 4 //ft
v1= 60 //ft/sec
g= 32.2 //ft/sec^2
//CALULATIONS
d2= d1*(sqrt(1+8*v1^2/(g*d1))-1)/2
//RESULTS
printf ('d2 = %.f ft ',d2)
