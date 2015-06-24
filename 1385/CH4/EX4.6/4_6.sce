clc
//initialisation of variables
m= 92.13 //gms
M= 78.11 //gms
n= 1 //moles
p= 119.6 //mm
p1= 36.7 //mm
//CALCULATIONS
n1= m/M
x= n/(n+n1)
y= 1-x
P= y*p
P1= x*p1
P2= P+P1
m1= P/P2
m2= 1-m1
//RESULTS
printf (' mole fraction of benzene= %.3f ',m1)
printf (' \n mole fraction of toulene= %.3f ',m2)
