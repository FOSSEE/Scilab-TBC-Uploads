

//exapple 1.62
clc; funcprot(0);
// Initialization of Variable
pi=3.14159;
alpha=42+10/60+40/3600;//altitude of sun
delta=23+12/60+18.6/3600;//declination of sun's angle
i=57/3600*1/tan(alpha*pi/180);//error
i2=8.78/3600*cos(alpha);//correction due to parallax
i3=15/60+45.86/3600;//coreectin due to semi diamter
longP=108+30/60;//longitude of place
LMT=14+50/60;
alpha=alpha-i+i2+i3;
delT=longP/15;//change in time
GMT=LMT+delT;
i4=1.2/3600*GMT;//error in time
H=(GMT-12+i4-delT)*15;//hour angle
i5=10.6/3600*GMT;//error in declination
delta=delta+i5;
ZM=(90-alpha)*pi/180;
PM=(90+delta)*pi/180;
A=asin(sin(PM)/sin(ZM)*sin(H*pi/180));
A=pi-A;
ZP=2*atan(sin(A/2+H*pi/360)/sin(A/2-H*pi/360)*tan(PM/2-ZM/2));
lat=pi/2-ZP;
lat=lat*180/pi+1;
disp("latitude of star observed:");
a=modulo(lat*3600,60);
printf("seconds %.2f",a);
b=modulo(lat*3600-a,3600)/60;
printf("  minutes %i",b);
c=(lat*3600-b*60-a)/3600;
printf("  degrees %i",c);


