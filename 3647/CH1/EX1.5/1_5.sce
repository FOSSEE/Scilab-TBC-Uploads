clc
//work done ground resistance
//initialisation of variables
g=32.1//ft/s
w=3//tonf
p=16//ft
p1=6//in
h=2240//ft/cm^2
m=4//tonf
v=24.08//ft/s
//CALCULATIONS
K=(m*h*(v^2))/(2*g)//ft lbf
P=m*h*(1/2)//ft lbf
R=(K+P)/(h*(1/2))//tonf
//RESULTS
printf('the work done ground resistance=% 2f tonf',R)
