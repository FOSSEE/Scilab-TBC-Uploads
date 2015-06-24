

//exapple 1.56
clc; funcprot(0);
// Initialization of Variable
alpha=64+36/60+20/3600;//altitude
delta=26+12/60+10/3600;//declination
pi=3.1415;
i=57/3600*1/tan(alpha*pi/180);//error
alpha=alpha-i;
z=90-alpha;//zenith distance
lat=delta+z;
disp("latitude of star observed:");
a=modulo(lat*3600,60);
printf("seconds %.2f",a);
b=modulo(lat*3600-a,3600)/60;
printf("  minutes %i",b);
c=(lat*3600-b*60-a)/3600;
printf("  degrees %i",c);
clear
