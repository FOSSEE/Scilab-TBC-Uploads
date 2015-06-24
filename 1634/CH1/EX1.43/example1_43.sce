

//exapple 1.43
clc; funcprot(0);
// Initialization of Variable
v1=18+36/60+48/3600;//vertical angle 1
v2=18+35/60+56/3600;//vertical angle 2
slm=28+36/60+20/3600;//altitude of sun measured
ds=15/60+59.35/3600;//dia of sun
pi=3.14159;
mv=(v1+v2)/2;//mean vertical angle
i=v1-v2;//error
sl=slm+i;//new altitude of sun
//part2
sl=sl+ds;
//part3
ir=-57/3600/(tan(slm*pi/180+26*pi/180/3600));//error due to refraction
sl=sl+ir;
//part4
ip=8.8/3600*cos(slm*pi/180+26*pi/180/3600);//error due to parallax
sl=sl+ip;
disp("correct altitude of sun")
a=modulo(sl*3600,60);
printf("seconds %.2f",a);
b=modulo(sl*3600-a,3600)/60;
printf("  minutes %i",b);
c=(sl*3600-b*60-a)/3600;
printf("  degrees %i",c);
