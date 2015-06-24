clc 
//initialisation of variables
x= 6 //in
l= 200 //ft
d= 10 //ft
v= 4 //ft/sec
Ce= 0.95
g= 32.2 //ft/sec^2
//CALCULATIONS
l1= sqrt(l^2/(Ce^2*(((x/12)*2*g/v^2)+(d^2/(d+(x/12))^2))))
//RESULTS
printf ('length = %.f ft ',l1)
