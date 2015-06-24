clc
clear
//Initialization of variables
B=70 //F
P1=140 //psia
x=0.986
P2=14.7 //psia
ms=2000 //lb/hr
Ihp=80
//calculations
disp("From mollier charts,")
hc=38 //Btu/lb
hf=324.82 //Btu/lb
hfg=868.2 //Btu/lb
h1=hf+x*hfg
Qin=ms*(h1-hc)
eta=Ihp*2545*100/(Qin)
Qw=Ihp*2545
Qr=Qin-Qw
per=Qr/Qin *100
//results
printf("Heat input to the boiler = %d Btu/hr",Qin)
printf("\n Cycle efficiency = %.1f percent",eta)
printf("\n Heat rejected to waste = %d Btu/hr or %.1f percent of Qin",Qr,per)
disp("The answer is a bit different due to rounding off error in textbook")
