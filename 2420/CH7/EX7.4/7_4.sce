clc
clear
//Initialization of variables
P1=200 //psia
T1=500 //F
P2=1 //psia
alpha=20 //degrees
n=3600
g=32.2 //ft/s^2
//calculations
disp("From mollier charts,")
V1=4240 //fps
Vb=V1*cosd(alpha) /2
R=Vb*60/(n*2*%pi)
work=1/32.2 *(V1*cosd(alpha))*Vb
eff=work/(V1^2 /(2*g)) *100
//results
printf("Blade velocity = %d fps",Vb)
printf("\n Blade radius = %.1f ft",R)
printf("\n Work done = %d ft-lb per lb of steam",work)
printf("\n Blade efficiency = %.1f percent",eff)
disp("The answers are a bit different due to rounding off error in textbook.")
