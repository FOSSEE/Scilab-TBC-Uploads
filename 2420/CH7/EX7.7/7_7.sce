clc
clear
//Initialization of variables
P1=200 //psia
T1=500 //F
P2=1 //psia
alpha=20 //degrees
n=3600
g=32.2 //ft/s^2
stage=2
//calculations
disp("From mollier charts,")
V1=4240 //fps
Vb=V1*cosd(alpha) /(2*stage)
R=Vb*60/(n*2*%pi)
V1x=3980 //fps
V2x=-1990 //fps
work1=1/g *(V1x-V2x)*Vb
work2=1/g *(-V2x)*Vb
wt=work1+work2
//results
printf("Blade velocity = %d fps",Vb)
printf("\n Blade radius = %.2f ft",R)
printf("\n Total Work done = %d ft-lb per lb of steam",wt)
disp("The answers are a bit different due to rounding off error in textbook.")
