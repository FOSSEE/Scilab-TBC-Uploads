

//exapple 1.57
clc; funcprot(0);
// Initialization of Variable
alpha=44+12/60+30/3600;//altitude
longP=75+20/60+15/3600;//longitude of place
delta=22+18/60+12.8/3600;//declination of sun
pi=3.1415;
i=57/3600*1/tan(alpha*pi/180);//error
i2=8.78/3600*cos(alpha);//correction due to parallax
i3=15/60+45.86/3600;//coreectin due to semi diamter
alpha=alpha-i+i2+i3;
z=90-alpha;//zenith distance
delT=longP/15;
i4=6.82/3600*delT;//error in time
delta=i4+delta;
lat=delta+z;
disp("latitude of sun is to the south observed:");
a=modulo(lat*3600,60);
printf("seconds %.2f",a);
b=modulo(lat*3600-a,3600)/60;
printf("  minutes %i",b);
c=(lat*3600-b*60-a)/3600;
printf("  degrees %i",c);
clear
