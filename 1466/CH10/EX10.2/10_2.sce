
clc
//initialisation of variables
clear
d= 3 //ft
r= 200
Q= 3500 //gal/min
k= 100
d1= 1.9 //ft

//CALCULATIONS
D= d-(Q/(k*r))-d1

//RESULTS
printf (' Required depth= %.3f ft',D)
