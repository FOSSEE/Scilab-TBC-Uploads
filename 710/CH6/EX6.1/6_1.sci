clc();
clear;
//To determine the angle of refraction
mew=1.63;              //refractive index of the glass plate
//tan ip=mew
ip=atand(mew);        //ip=polarising angle
//ip+r=90
r=90-ip              //r=angle of refraction
printf("The angle of refraction is %f",r);
