

//exapple 1.59
clc; funcprot(0);
// Initialization of Variable
delta1=20+25/60+48/3600;//declination of star 1
delta2=79+30/60+52/3600;//declination of star 2
alpha1=48+18/60+12/3600;//altitude of star 1
alpha2=47+54/60+6/3600;//altitude of star 2
pi=3.1415;
r1=58/3600/tan(alpha1*pi/180)//error 1
r2=58/3600/tan(alpha2*pi/180)//error 2
lat=90-(alpha1-alpha2)/2+(delta1-delta2)/2+(r1-r2)/2;
disp("latitude of star observed:");
a=modulo(lat*3600,60);
printf("seconds %.2f",a);
b=modulo(lat*3600-a,3600)/60;
printf("  minutes %i",b);
c=(lat*3600-b*60-a)/3600;
printf("  degrees %i",c);
