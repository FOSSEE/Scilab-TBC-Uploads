clc
clear
//Initalization of variables
rel=0.9
p1=0.0396 //psia
p2=0.3631 //psia
//calculations
act=rel*p1
RH=act/p2 *100
//results
printf("Relative humidity = %.1f percent",RH)
