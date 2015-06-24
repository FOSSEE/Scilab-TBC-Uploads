clc
//initialisation of variables
b= 15 //in
h= 1.25 //in
h1= 2.75 //in
g= 32.2 //ft/sec^2
//CACULAIONS
Q= 3.09*(b/12)*(h/12)^1.5
u1= Q*144/(b*h1)
H= (u1^2/(2*g))*12
h2= H+h
Q1= 3.09*(b/12)*(h2/12)^1.5
//RESULTS
printf (' Rate of flow= %.4f ft^3/sec',Q1)
