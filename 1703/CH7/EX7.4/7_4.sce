clear
clc
//initialisation of variables
h= 4 //ft
w= 6 //ft
l= 100 //yd
a= 60 //degrees
h1= 3 //ft
h2= 2 //ft
Cd= 0.6
g=32.2 //ft/s^2
//CALCULATIONS
A= l*3*w
function [y]=fun(H)
    y=-A*H^-2.5/(Cd*(8/15)*tand(a/2)*sqrt(2*g))
endfunction
vec2=intg(h1,(h1-h2),fun)
T= vec2
//RESULTS
printf ('time for the channel to fall = %.f sec',T)
