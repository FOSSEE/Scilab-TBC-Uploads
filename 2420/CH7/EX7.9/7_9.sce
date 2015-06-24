clc
clear
//Initialization of variables
pow=1000 //kw
ms=16000 //lb/hr
P=200 //psia
T=540 //F
//calculations
disp("From mollier charts,")
h1=1290 //Btu/hr
h2=940 //Btu/hr
dh=h1-h2
rate=3413/dh
act=ms/pow
//results
printf("Ideal steam rate = %.2f lb per kw hr",rate)
printf("\n Actual steam rate = %d lb per kw hr",act)
