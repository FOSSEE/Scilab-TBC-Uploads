//Determine insulation resistance
clear;
clc;
//soltion
//given
row=4*10^12;//ohm m
l=3*10^3;//m
r1=12.5;//mm
r2=12.5+5;//mm
Rins=row*log(r2/r1)/(2*%pi*l);
printf("Insulation resistance (Rins)= %.1f M ohm",Rins/10^6);
