
clc
//initialisation of variables
d= 10 //in
l= 15 //ft
di= 3 //in
Cd= 0.62 
g=32.2
//CALCULATIONS
function [y]=fun(H)
    y=-l*2*sqrt((d/2)^2-((d/2)-H)^2)/(Cd*(%pi*(di/12)^2/4)*H^0.5*sqrt(2*g))
endfunction
vec2=intg(d/2,0,fun)
T= vec2
//RESULTS
printf ('time for the channel to fall = %.f sec',T)
