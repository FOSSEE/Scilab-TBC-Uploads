

//exapple 1.61
clc; funcprot(0);
// Initialization of Variable
alpha=40+36/60+30/3600;//altitude of star
delta=10+36/60+40/3600;//declination of star
H=46+36/60+20/3600;//hour angle of star
pi=3.1412;
n=atan(tan(delta*pi/180)/cos(H*pi/180));
lat=n+acos(sin(alpha*pi/180)*sin(n)/sin(delta*pi/180));
lat=lat*180/pi;
disp("latitude of star observed:");
a=modulo(lat*3600,60);
printf("seconds %.2f",a);
b=modulo(lat*3600-a,3600)/60;
printf("  minutes %i",b);
c=(lat*3600-b*60-a)/3600;
printf("  degrees %i",c);
