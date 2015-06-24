clc
//initialisation of variables
clear
A= 1/16 //mile^2
d= 2 //ft
h= 18 //ft
h1= 5 //ft
f= 0.006
l= 200 //ft
h2= 10 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
X= sqrt(1/((1.5+(4*f*l/d))/(2*g)))
function [y]=fun(H)
    y=A*5280^2*H^-0.5/(%pi*d^2*X/4)
endfunction
vec2=intg(h-h1,h,fun)
T= vec2
//RESULTS
printf ('time for the channel to fall = %.f sec',T)
