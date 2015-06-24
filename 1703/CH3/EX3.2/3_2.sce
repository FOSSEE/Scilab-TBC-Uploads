clear   
clc
//initialisation of variables
w= 62.4 //lb/ft^3
P= 1.7 //lb/in^2
d1= 6 //in
d2= 3 //in
hab= 8 //ft
Q= 0.75 //cuses
sm= 13.6
g= 32.2 //ft/sec^2
//CALCULATIONS
dP= P*144/w
va= Q*(d1/d2)^4/%pi
k= -(((d1/d2)^4-1)-((-dP+hab)*2*g/va^2))
h= (-dP+hab)*12/(sm-1)
//RESULTS
printf ('k = %.f ',k)
printf ('\n height difference = %.2f in',h) 
