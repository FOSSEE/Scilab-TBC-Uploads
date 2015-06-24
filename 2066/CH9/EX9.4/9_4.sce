clc
clear
//Initialization of variables
p1=14.7 //psia
z1=3 //ft
gam=62.4
rho=1.94 //slug/ft^3
pa=0.4 //psia
za=1 //ft
//calculations
v3=(pa-p1)*144 + (za-z1)*gam
V=sqrt(-v3*2/(3*rho))
//results
printf("Velocity of flow = %.1f ft/s",V)
disp("The answer is a bit different due to rounding off error in textbook")
