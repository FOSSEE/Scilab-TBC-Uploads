

//exapple 1.64
clc; funcprot(0);
// Initialization of Variable
pi=3.14159;
RA=1+41/60+48.64/3600;
lat=48+36/60+40/3600;//latitude
delta=88+58/60+28.26/3600;//declination of polaris
GMM=16+48/60+20.86/3600;
longP=7+20/60;//longitude of place P
i1=51/3600;//error due to barometer
i2=1/3600;//error due to barometer
i3=-1/3600;//error due to temp
lat=lat-i1+i2+i3;
delT=longP/15;
i4=delT*9.8565/3600;
lst=GMM+i4;
LMT=20+24/60+50/3600;
i6=9.8565/3600*LMT;//error in LMT
LST=LMT+i6+lst-24;
H=LST-RA;//hour angle
H=H*15;
lat=lat-(90-delta)*cos(H*pi/180)+.5*sin(1/3600*pi/180)*(90-delta)^2*(sin(H*pi/180))^2*tan(lat*pi/180);
disp("latitude of star observed:");
a=modulo(lat*3600,60);
printf("seconds %.2f",a);
b=modulo(lat*3600-a,3600)/60;
printf("  minutes %i",b);
c=(lat*3600-b*60-a)/3600;
printf("  degrees %i",c);

