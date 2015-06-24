clc
//initialisation of variables
d1= 4//ft
d2= 2 //in
l= 300 //ft
P= 5 //lb/in^2
h1= 3 //ft
h2= 6 //ft
f= 0.01
//CALCULATIONS
X= P*2.31*10*(d2/12)^5/(f*l)
A= %pi*d1^2/4
function [y]=fun(h)
    y=A*sqrt((P*2.31*10*(d2/12)^5/(f*l))-(10*(d2/12)^5*h/(f*l)))/(10*(d2/12)^5/(f*l))/7
endfunction
vec2=intg(h1,h2,fun)
T= vec2
//RESULTS
printf ('time for the channel to fall = %.f sec',T)
 
