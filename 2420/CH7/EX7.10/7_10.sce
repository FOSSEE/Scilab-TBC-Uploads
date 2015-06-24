clc
clear
//Initialization of variables
P=200 //psia
T=540 //F
pow=1000 //kw
ms=16000 //lb/hr
//calculations
disp("From mollier charts,")
h1=1290 //Btu/hr
h2=940 //Btu/hr
dh=h1-h2
hf2=83 //Btu/lb
etat=(h1-h2)/(h1-hf2)
act=pow*3413/(ms*(h1-hf2))
etae=act/etat
//results
printf("Ideal thermal efficiency = %.1f percent",etat*100)
printf("\n Actual thermal efficiency = %.1f percent",act*100)
printf("\n Engine efficiency = %.1f percent",etae*100)
