clc
clear
//Initialization of variables
md=15 //lb per lb of coal
x=0.1
mss=1 //basis
rea=29 //in of Hg
sg=0.491
R=53.3
T=540+460 //R
V=25 //fps
gam=0.038 //lb/ft^3
//calculations
m=mss-mss*x+md
ms=m
rhog=rea*0.491*144/(R*T)
A=ms/(gam*V)
//results
printf("stack area = %.1f sq ft",A)
