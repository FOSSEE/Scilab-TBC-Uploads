clc
clear
//Initialization of variables
A2=9 //sq ft
p2=3/12 *62.4 //psf
p1=-1/12 *62.4 //psf
ms=20000 //cfm
A1=16 //sq ft
gam=0.075 //lb/ft^3
g=32.2 //ft/s^2
inp=17 //hp
//calculations
V2=ms/60 *1/A2
V1=ms/60 *1/A1
ht=(p2-p1)/gam +(V2^2 -V1^2)/(2*g)
airhp=ht*ms*gam/33000
eta=airhp/inp *100
//results
printf("Total head = %.1f ft of air",ht)
printf("\n Air hp = %.1f hp",airhp)
printf("\n Effifciency = %.1f percent",eta)
