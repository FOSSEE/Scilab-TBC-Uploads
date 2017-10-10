//Ch25_Ex19
clc;
clear;
close;
vol=1; w=21/1000; //weight converted into kilogram
l=1*100; r=3/2; //since diameter=3cm 
t=1; //thickness of metal
innerR=r; //inner radius
outerR=innerR+t; //outer radius
volIron= %pi*outerR^2*l-%pi*innerR^2*l;
weightPipe=volIron*w;
mprintf("The weight of the pipe is %.1f kg",weightPipe);
