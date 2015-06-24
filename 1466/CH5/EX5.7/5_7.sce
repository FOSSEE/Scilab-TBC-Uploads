
clc
//initialisation of variables
L= 10 //ft
h= 2 //ft
w= 20//ft
d= 3//ft
n= 2
g= 32.2 //ft/sec^2
//CALCULATIONS
Q= 3.33*(L-0.*h)*h^1.5
v1= Q/(w*d)
H1= h+v1^2/(2*g)
Q= 3.33*(L-0.1*n*H1)*(H1^1.5-(v1^2/(2*g))^1.5)
//RESULTS
printf (' Discharge over a weir = %.f ft^3/sec',Q)
