clc
//initialisation of variables
g= 32.2 //ft/sec^2
d= 6 //ft
di= 2 //in
h= 9 //ft
Cd= 0.6
//CALCULATIONS
function [y]=fun(H)
    y= H^-0.5*(d/2)^2*%pi/(Cd*%pi*sqrt(2*g)/144)
endfunction
vec2=intg(0,h,fun)
T= vec2
//RESULTS
printf ('Time to emptify = %.f sec',T)
