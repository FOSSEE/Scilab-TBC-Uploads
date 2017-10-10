//Chapter 24 Ex12

clc;
clear;
close;
side=1;   //assuming side of square as 1
area=side^2;
nside=(1+(25/100))*side;
narea=(nside)^2;
increase=((narea-area)/area)*100;
mprintf("The percentage change in area is %.2f percent",increase);
