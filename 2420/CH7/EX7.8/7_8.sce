clc
clear
//Initialization of variables
alpha=20 //degrees
n=3600
g=32.2 //ft/s^2
V1=500 //fps
//calculations
Vb=V1*cosd(alpha)
V1x=Vb
work=1/32.2 *(V1x)*Vb
//results
printf("Blade velocity = %d fps",Vb)
printf("\n Work done = %d ft-lb per lb of steam",work)
disp("The answers are a bit different due to rounding off error in textbook.")

