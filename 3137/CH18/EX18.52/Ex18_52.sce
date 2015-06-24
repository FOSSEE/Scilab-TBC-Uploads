//Initilization of variables
k=4 //lb/ft
so=1 //ft
W=1/2 //lb
g=32.2 //ft/s^2
vo=5 //ft/s
//Calculations
m=W/g //kg
//Angular momentum is conserved
v=sqrt((0.5*k*so^2*2*2*g)+vo^2) //ft/s
//Using vd=15
d=15/v //ft
//Result
clc
printf('The ball passes %f ft close to the fixed pin',d)
