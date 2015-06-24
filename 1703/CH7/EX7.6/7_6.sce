clear
clc
//initialisation of variables
l= 8 //ft
b= 6 //ft
h= 10 //ft
r= 3
Cd= 0.6
A1= 36 //ft^2
A2= 12 //ft^2
l1= 6 //ft
h1= 1 //ft
d= 2 //in
g=32.2 //ft/s^2
//CALCULATIONS
function [y]=fun(H)
    y=H^-0.5/(Cd*(%pi*(d/12)^2/4)*sqrt(2*g)*((1/A1)+(1/A2)))
endfunction
vec2=intg(0,(b-h1),fun)
T= vec2
//RESULTS
printf ('time for the levels to become equal = %.f sec',T)
