//chapter 19 Ex 5

clc;
clear;
close;
sStill=7.5; sRiver=1.5; tTotal=50/60;
sDown=sStill+sRiver;
sUp=sStill-sRiver;

dist=tTotal/(1/sDown+1/sUp);
printf("The required distance is %d km",dist);
