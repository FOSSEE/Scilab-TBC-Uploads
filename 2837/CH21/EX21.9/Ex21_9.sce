clc
clear
//Initalization of variables
flow=98000 //lb/hr
loss=200 //hp
x= 0.11 //percent
shp=3000 //hp
//calculations
sflow = x*flow
sflow2= sflow + (flow-sflow)*shp/8060
srate=sflow2/shp
//results
printf("Steam rate required = %.2f lb/hp-hr",srate)
