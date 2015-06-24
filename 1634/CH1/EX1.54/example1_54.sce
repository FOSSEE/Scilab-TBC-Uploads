

//exapple 1.54
clc; funcprot(0);
// Initialization of Variable
pi=3.14159;
a1=24+30/60+20/3600;
a2=24+30/60+40/3600;
a3=25;
a4=25+1/60;
lat=(a1+a2+a3+a4)/4;
il=(10.6-9.4)/4*15/3600;//error due to level
lat=lat+il;
ir=-57/3600/tan((lat*pi/180));//carrection of refraction
ip=8/3600*cos(lat*pi/180);//correction of parallax
lat=lat-ir+ip;
z=90-lat;
delta=1+32/60+16.8/3600-56.2/3600*(3/60+1.86/3600);
p=90-delta;
c=90-36-48/60-30/3600;
s=(p+z+c)/2;
s1=s-c;
s2=s-p;
s3=s-z;
A=2*atan(sqrt(sin(s3*pi/180)*sin(s1*pi/180)/sin(s*pi/180)/sin(s2*pi/180)));
A=A*180/pi;

A=A+81+59/60+10/3600;
A=360-A;
disp("azimuth of star is:");
a=modulo(A*3600,60);
printf("seconds %.2f",a);
b=modulo(A*3600-a,3600)/60;
printf("  minutes %i",b);
c=(A*3600-b*60-a)/3600;
printf("  degrees %i",c);
clear
