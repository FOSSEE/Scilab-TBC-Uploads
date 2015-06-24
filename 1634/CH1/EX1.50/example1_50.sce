

//exapple 1.50
clc; funcprot(0);
// Initialization of Variable
pi=3.14159;
long=(15+30/60)/15;//longitude
GMT=19+12/60+36.2/3600;
i=long*9.8565/3600;//error in longitude
LMT=GMT+long;
i2=LMT*9.8565/3600;//error in LMT
LMT=LMT+i2;
LST=10+12/60+21.4/3600+LMT;
H=LST-10-12/60-6.3/3600;//hour angle
H=H*15;
H=360-H;
As=atan(tan((55+29/60+1.2/3600)*pi/180)*cos((32+52/60+27/3600)*pi/180)/sin((-2-7/60-33/3600)*pi/180));
h=36+28/60+18/3600;//angle between line and star
A=180+As*180/pi-h;
disp("azimuth of star is:");
a=modulo(A*3600,60);
printf("seconds %.2f",a);
b=modulo(A*3600-a,3600)/60;
printf("  minutes %i",b);
c=(A*3600-b*60-a)/3600;
printf("  degrees %i",c);
clear
