//Initilization of variables
v1=20 //ft/s
vw=80 //ft/s
d=2/12 //ft
g=32.2 //ft/s^2
//Calculations
v=vw-v1 //ft/s
//mass flow rate without t
m=(1/4)*(%pi*d^2)*(62.4/g)*v
//Applying impulse momentum theorem
P=m*v //lb
//Result
clc
printf('The force exerted by water on the plate is %f lb',P)
