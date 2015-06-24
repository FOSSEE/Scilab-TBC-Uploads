

//exapple 1.48
clc; funcprot(0);
// Initialization of Variable
//part1
theta=54+30/60;//logitude
delta=62+12/60+21/3600;//declination
pi=3.14;
lat=asin(sin(theta*pi/180)/sin(delta*pi/180));
lat=lat*180/pi;
disp("latitude of star observed:");
a=modulo(lat*3600,60);
printf("seconds %.2f",a);
b=modulo(lat*3600-a,3600)/60;
printf("  minutes %i",b);
c=(lat*3600-b*60-a)/3600;
printf("  degrees %i",c);
//part2
A=53+25/60;//azimuth of star
h=65+18/60+42/3600;//horizontal angle
A=A+h;
disp("azimuth of line AP is:");
a=modulo(A*3600,60);
printf("seconds %.2f",a);
b=modulo(A*3600-a,3600)/60;
printf("  minutes %i",b);
c=(A*3600-b*60-a)/3600;
printf("  degrees %i",c);
//part3
lst=4+39/60+6.5/3600;//LST of LMN
LST=10+58/60+38/3600+2+49/60+25.3/3600;//LST of observation
LMN=LST-lst;
i=LMN*9.8565/3600;//error
LMT=LMN-i;
disp("local mean time is:")
a=modulo(LMT*3600,60);
printf("seconds %.2f",a);
b=modulo(LMT*3600-a,3600)/60;
printf("  minutes %i",b);
c=(LMT*3600-b*60-a)/3600;
printf("  hours %i",c);
