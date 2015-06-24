clc 
//initialisation of variables
sg= 0.7
v= 0.05 //poise
g= 32.2 //ft/sec^2
w= 62.4 //lbs/ft^3
//CALCULATIONS
u= v*30.5/(g*453.6)
v1= v/sg
d= w*v1/g
v= u/d
//RESULTS
printf ('viscocity= %.6f slug/t sec ',u)
printf ('\n kinematic viscocity= %.4f cm^2/ sec ',v1)
printf ('\n kinematic viscocity= %.6f ft^2/ sec ',v)
