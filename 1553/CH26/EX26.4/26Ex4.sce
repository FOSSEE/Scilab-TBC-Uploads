//Chapter 26 Ex 4

clc;
close;
clear;
dist=100;
speedA=(8*1000)/(60*60);    //converted into meter/second
tA=dist/speedA;
ahead=4; tbeat=15;...//if B starts 4 meters ahead od A then also A beats B by 15 seconds
Bcover=dist-ahead;
tB=tA+tbeat;
speedB=(Bcover/tB);
mprintf("The speed of B is %.2f km/hr",(speedB*60*60)/1000);
