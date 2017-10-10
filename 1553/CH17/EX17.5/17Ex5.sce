//chapter 17: Ex5
clc;
clear;
close;
time=1+(24/60); //converting into hours
speed1=4; speed2=5; dist1=2/3; dist2=1-dist1;
distanceTotal=time/(dist1/speed1+dist2/speed2);
mprintf("Toal distance is %.0f km",distanceTotal);
