//Solutions to Problems In applied mechanics
//A N Gobby
clear all;


clc
//initialisation of variables
w=80//lbf
p=4//ft
d=20//stroke/min
d1=3//in
p1=0.6//sec
h=2//ft/s
g=32.2//ft/s
t=60//sec
//CALCULATIONS
P=t/d//sec
U=2*%pi/d1//sec^-1
V=U*sqrt(h^2-(3/4)^2)//ft/s
K=(w*V^2/(h*g))//lbf
M=U^2*h//ft/s^2
M1=(w/g)*M//lbf
D=h*cosd(U*0.6*180/%pi)//ft
D1=h-D//ft
//RESULTS
printf('the kinetic energy of the crosshead=% f lbf',K)
printf('the maximum acceleration of force on crosshead=% f lbf',M1)
printf('the distance from end of the path=% f ft',D1)
