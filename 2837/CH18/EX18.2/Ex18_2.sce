clc
clear
//Initalization of variables
q=350 //cfm
eff=0.78
x=0.95
p2=120 //psia
p1=14.3 //psia
//calculations
cal=p1*144*q/550 *log(p2/p1) /100
ihp= cal/eff
shp=ihp/x
//results
printf("Indicated hp = %.1f hp",ihp)
printf("\n Shaft hp = %.1f hp",shp)
