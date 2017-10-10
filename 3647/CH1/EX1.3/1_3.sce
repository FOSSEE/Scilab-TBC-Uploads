//velocity is uniform and force and velocity
clc
//initialisation of variables
f=90//lbf
w=6//tonf
m=10//lbf/tonf
f1=1//min
h=0.8//hp
m1=m*w//lbf
n=f-m1//lbf
p=2240//lbf
f2=0.0715//ft/s^2
r=550//ft
//CALCULATIONS
S=1/2*f2*(m1)^2//ft
V=f2*m1//ft/s
H=(f*V)/r//ft
V1=h/(m1/r)//ft/s
//RESULTS
printf('the velocity is uniform and force and velocity=% f ft/s',V1)
