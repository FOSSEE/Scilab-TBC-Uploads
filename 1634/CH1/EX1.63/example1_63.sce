

//exapple 1.63
clc; funcprot(0);
// Initialization of Variable
delta=15+20/60+48/3600;//declination of star
Int=9+22/60+6/3600;//interval
pi=3.141;
dint=Int*9.8565/3600;//change in interval
H=(Int+dint)*15/2;//hour angle
lat=atan(tan(delta*pi/180)/cos(H*pi/180));
lat=lat*180/pi+5/6*16/3600;
disp("latitude of star observed:");
a=modulo(lat*3600,60);
printf("seconds %.2f",a);
b=modulo(lat*3600-a,3600)/60;
printf("  minutes %i",b);
c=(lat*3600-b*60-a)/3600;
printf("  degrees %i",c);


