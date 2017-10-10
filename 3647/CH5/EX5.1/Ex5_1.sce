//Solutions to Problems In applied mechanics
//A N Gobby
clear all;

clc
//initialisation of variables
r=120//rev/min
a=45//degree
d=1//ft
w=6//ft
q=3.96//ft/s
r1=7//ft
D=0.565//rad/s
W=28.0//ft
v1=12.6//ft
v2=22.4//ft
//CALCULATIONS
U=r*(2*%pi/60)*d//ft/s
a1=q/r1//rad/s
A=q/r1*W//ft/s
Vb=a1*W//ft/s
//RESULTS
printf('The velocity =% f ft/s',A)
printf('the angular velocity=% f ft/s',Vb)
