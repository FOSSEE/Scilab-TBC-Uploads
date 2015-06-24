clc 
//initialisation of variables
l= 600 //ft
w= 400 //ft
s= 1
h= 20 //ft
d= 3 //ft
dh= 10 //ft
Cd= 0.7
g= 32.2 //ft/sec^2
k= 240000
k1= 2000
k2= 4
//CALCULATIONS
T= (4/(Cd*%pi*d^2*sqrt(2*g)))*(2*k*(sqrt(h)-sqrt(dh))+k1*(2/3)*(h^1.5-dh^1.5)+4*0.4*(h^2.5-dh^2.5))
//RESULTS
printf ('Time taken for 10 feet fall = %.f sec',T)
