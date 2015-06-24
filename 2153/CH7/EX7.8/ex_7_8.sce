// Example 7.8: which part has a greater stress
clc;
clear;
close;
l=24;//length in mm
b=30;//breadth in mm
ld=7000;//load in kg
sd=10;//steel bar diamtere in mm
sl=5000;//load in kg
al=ld/(l*b);//stress on aluminium bar in kg/mm^2
a=((%pi*sd^2)/4);//area in mm^2
slb=sl/a;//stress on steel bar in kg/mm^2
disp("stress on aluminium bar is "+string(al)+" kg/mm^2 is less than stress on steel bar "+string(slb)+" kg/mm^2 " )
