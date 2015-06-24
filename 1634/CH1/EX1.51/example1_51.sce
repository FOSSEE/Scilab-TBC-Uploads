

//exapple 1.51
clc; funcprot(0);
// Initialization of Variable
pi=3.14159;
alpha=33+35/60+10/3600;//altitude
ZM=90-alpha;
delta=22+05/60+35/3600;//declination
PM=90-delta;
theta=52+30/60+20/3600;//latitude
ZP=90-theta;
As=acos((cos(PM*pi/180)-cos(ZP*pi/180)*cos(ZM*pi/180))/(sin(ZP*pi/180)*sin(ZM*pi/180)));
h=18+20/60+30/3600;//angle between line and star
A=As*180/pi+h;
disp("azimuth of star is:");
a=modulo(A*3600,60);
printf("seconds %.2f",a);
b=modulo(A*3600-a,3600)/60;
printf("  minutes %i",b);
c=(A*3600-b*60-a)/3600;
printf("  degrees %i",c);
clear
