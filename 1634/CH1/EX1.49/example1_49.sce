

//exapple 1.49
clc; funcprot(0);
// Initialization of Variable
//part1
theta=53+32/60;//logitude
delta=56+42/60+53.2/3600;//declination
pi=3.14159;
lat=asin(sin(theta*pi/180)/sin(delta*pi/180));
lat=lat*180/pi;
disp("altitude of star observed:");
a=modulo(lat*3600,60);
printf("seconds %.2f",a);
b=modulo(lat*3600-a,3600)/60;
printf("  minutes %i",b);
c=(lat*3600-b*60-a)/3600;
printf("  degrees %i",c);
//part2
As=asin(cos(delta*pi/180)/cos(theta*pi/180));//azimuth of star
h=75+18/60+20/3600;//angle between line and star
A=h-As*180/pi;
A=360-A;
disp("azimuth of line AP is:");
a=modulo(A*3600,60);
printf("seconds %.2f",a);
b=modulo(A*3600-a,3600)/60;
printf("  minutes %i",b);
c=(A*3600-b*60-a)/3600;
printf("  degrees %i",c);
//part3
LST=10+58/60+3.9/3600+22+10/60+38.5/3600-24;//LST of observation
long=5+40/60+18/3600;//longitude
i=long*9.8565/3600;//error
lst=4+58/60+23.84/3600+i;//LST on LMN
LMM=LST-lst;
i2=LMM*9.8565/3600;//error in LMM
LMT=LMM-i2;
disp("local mean time interval is:")
a=modulo(LMT*3600,60);
printf("seconds %.2f",a);
b=modulo(LMT*3600-a,3600)/60;
printf("  minutes %i",b);
c=(LMT*3600-b*60-a)/3600;
printf("  hours %i",c);

