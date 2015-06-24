
clc 
//initialisation of variables
L= 4700 //ft
l1= 2500 //ft
d1= 15 //in
l2= 1200 //ft
d2= 12 //in
d3= 9 //in
l3= 1000 //ft
H= 100 //ft
f= 0.01
g= 32.2 //ft/sec^2
//CALCULATIONS
D= (L/((l1/(d1/12)^5)+(l2/(d2/12)^5)+(l3/(d3/12)^5)))^(1/5)
v= sqrt(2*g*D*H/(4*f*L))
Q= v*%pi*D^2/4
//RESULTS
printf ('Quantity discharged= %.2f cusecs',Q) 
