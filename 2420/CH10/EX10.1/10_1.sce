clc
clear
//Initialization of variables
hb=29 //in of Hg
sg=0.491
Ra=53.3
Ta=460+40 //R
Tg=540+460 //R
H=300 //ft
gam=62.4 //lb/cu ft
//calculations
pb=hb*sg*144
rhoa=pb/(Ra*Ta)
rhog=pb/(Ra*Tg)
dp=H*(rhoa-rhog)
D=dp/(gam)
//results
printf("Theoretical draft = %.1f psf",dp)
printf("\n Draft = %.2f ft H2O",D)
