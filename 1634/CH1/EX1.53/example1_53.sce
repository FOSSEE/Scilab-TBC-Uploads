

//exapple 1.53
clc; funcprot(0);
// Initialization of Variable
pi=3.14159;
GMT=17+5/60+2/3600;//
i=9.8565/3600*GMT;
GST=3+12/60+12/3600;
wl=1+18/60;//west longitude
RA=16+23/60+30/3600;
H=GMT+i+GST+wl-RA;//hour angle
H=H*15;
p=90-29-52/60;
c=90-52-8/60;
z=acos(cos(H*pi/180)*sin(p*pi/180)*sin(c*pi/180)+cos(p*pi/180)*cos(c*pi/180));
A=asin(sin(p*pi/180)*sin(H*pi/180)/sin(z));
A=A*180/pi;
disp("azimuth of star is:");
a=modulo(A*3600,60);
printf("seconds %.2f",a);
b=modulo(A*3600-a,3600)/60;
printf("  minutes %i",b);
c=(A*3600-b*60-a)/3600;
printf("  degrees %i",c);
clear
