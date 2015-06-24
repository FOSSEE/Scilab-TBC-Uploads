clc();
clear;
//To determine the angle made by plane of vibration of the incident light with optic axis
//IE=A^2*cos^2(teta);IO=A^2*sin^2(teta)
//I0/IE=tan^2(teta)=0.65
a=0.65;                          //ratio of intensities of ordinary & extraordinary light
teta=atand(sqrt(a))              //angle made by plane of vibration of the incident light with optic axis
printf("The angle made by the plane of vibration of incident light with the optic axis is %f",teta);