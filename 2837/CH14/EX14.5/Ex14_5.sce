clc
clear
//Initalization of variables
rate=94 //lb/hr
hp=197 //hp
c=8
h=18
Lv=17730 //Btu/hr
H=2368089 //Btu/hr
//calculations
amount=rate*c/12 +h
amount=0.824
Lvv=H-Lv
eff=hp*2544/(amount*Lvv) *100
//results
printf("Thermal efficiency = %.2f percent",eff)
