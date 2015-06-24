clc
clear
//Initalization of variables
hp1=2000 //bhp
m=792 //lb/hr
ex=0.5
hp2=210
hv=18900 //Btu/lb
etth=51.3
//calculations
ihp=hp1+hp2
ietat= ihp*2544/(m*hv) *100
betat=ietat*hp1/ihp
betat2=hp1*2544/(m*hv) *100
ietae=ietat/etth *100
betae=betat/etth *100
brake= ietae*hp1/ihp
//results
printf("Indicated efficiency = %.1f percent",ietat)
printf("\n Brake thermal efficiency = %.1f percent",betat)
printf("\n In case 2, Brake thermal efficiency = %.1f percent",betat2)
printf("\n Indicated thermal efficiency = %.1f percent",ietae)
printf("\n Brake engine efficiency = %.1f percent",betae)
printf("\n In case 2, Brake engine efficiency = %.1f percent",brake)
