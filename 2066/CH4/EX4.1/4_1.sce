clc
clear
//Initialization of variables
rho=1.5 //g/cc
g=32.2 //ft/s^2
dzds=-0.5
x1=0
x2=3
//calculations
function dpds = func(s)
    dpds=-rho*g*dzds - rho*(3+9*s)*9
endfunction
r1=func(x1)
r2=func(x2)
//results
printf("At the upper end, dp/ds = %.1f lb/ft^2 per foot",r1)
printf("\n At the lower end, dp/ds = %.1f lb/ft^2 per foot",r2)
