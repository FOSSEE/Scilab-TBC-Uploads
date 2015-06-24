clc
clear
//Initalization of variables
rate=94 //lb/hr
hp=197 //hp
c=8
h=18
mole=9
H=2350359 //Btu/hr
//calculations
amount=rate*c/12 +h
amount=0.824
Lvv=H-mole*18.016*1050.4
eff=hp*2544/(amount*Lvv) *100
//results
printf("Thermal efficiency = %.2f percent",eff)
disp("The answer in the textbook is a different due to rounding off error")
