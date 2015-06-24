

//exapple 1.52
clc; funcprot(0);
// Initialization of Variable
//part1
GAT=5+17/60+6/60;//GAT of observation
delta=17+46/60+52/3600;//declination
i=37/3600*GAT;
delta=delta-i;
disp("declination of GAT is:");
a=modulo(delta*3600,60);
printf("seconds %.2f",a);
b=modulo(delta*3600-a,3600)/60;
printf("  minutes %i",b);
c=(delta*3600-b*60-a)/3600;
printf("  degrees %i",c);
//part2
pi=3.14159;
p=90-delta;//co-declination
altitude=23+15/60+20/3600;//altitude of sun
i2=2/60+12/3600;//error due to refraction
i3=8/3600;//error due to parallax
altitude=altitude-i2+i3;
c=90-55-46/60-12/3600;//colatitude
z=90-altitude;//co altitude
s=(p+z+c)/2;
s1=s-c;
s2=s-p;
s3=s-z;
A=2*atan(sqrt(sin(s3*pi/180)*sin(s1*pi/180)/sin(s*pi/180)/sin(s2*pi/180)));
A=A*180/pi;
disp("azimuth of star is:");
a=modulo(A*3600,60);
printf("seconds %.2f",a);
b=modulo(A*3600-a,3600)/60;
printf("  minutes %i",b);
c=(A*3600-b*60-a)/3600;
printf("  degrees %i",c);
clear
