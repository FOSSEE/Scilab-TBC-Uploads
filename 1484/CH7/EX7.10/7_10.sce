
clc 
//initialisation of variables
Cd= 0.95
m= 300 //ft
V= 8 //ft/sec
d= 6 //ft
n= 6
s= 40 //ft
g= 32.2 //ft/sec^2
dh= 0.11
//CALCULATIONS
h= (V^2/(g+(d/3)))*(1.1*(m/(s*n))^2-1)
h1= (V^2/(2*g))*(1.1*(m/(s*n))^2-(d/(s/n)))+dh
//RESULTS
printf ('afflux upstream= %.2f ft',h1)
