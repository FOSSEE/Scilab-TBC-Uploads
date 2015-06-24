clc
clear
disp('example 15.1')
a=0.1  //plate area
b=3    //flux density
d=0.5  //distence between plates
v=1000  //average gas velosity
c=10    //condectivity
e=b*v*d
ir=d/(c*a)  //internal resistence
mapo=e^2/(4*ir) //maximum power output
printf("E=%dV \ninternal resistence %.1fohm \nmaximum power output %dW =%.3fMW",e,ir,mapo,mapo/10^6)