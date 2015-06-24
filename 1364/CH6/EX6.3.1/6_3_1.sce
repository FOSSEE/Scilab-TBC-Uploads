clc
//initialisation of variables
p= 60 //lbf/in^2
w= 62.4 //lbf/ft^3
l= 1 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
i= p*144/(w*l)
a= i*g
//RESULTS
printf ('accelaration of fluid = %.f ft/sec^2',a)
