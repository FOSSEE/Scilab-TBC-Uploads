//Example 1_6_u1
clc();
clear;
//Calculate the wavelengths of light in visible spectrum
i=35          //units in degrees
u=1.33
d=5*10^-5      //units in cm
r=asin(sin(i*%pi/180)/u)      //units in radians
r=r*180/%pi                   //units in degrees
//For n=1
n=1
lamda1=(2*u*d*cos(r*%pi/180))/n       //units in cm
printf("For n=1 lamda=%.6fcm which lies in infrared region",lamda1)
//For n=2
n=2
lamda2=(2*u*d*cos(r*%pi/180))/n      //units in cm
printf("\nFor n=2 lamda=%.6fcm which lies in visible region",lamda2)
//For n=3
n=3
lamda3=(2*u*d*cos(r*%pi/180))/n          //units in cm
printf("\nFor n=3 lamda=%.6fcm which lies in visible region",lamda3)
//For n=4
n=4
lamda4=(2*u*d*cos(r*%pi/180))/n        //units in cm
printf("\nFor n=4 lamda=%.6fcm which lies in ultraviolet region",lamda4)
printf("\nHence absent wavelengths in reflected region are %.6fcm  and %.6fcm",lamda2,lamda3)
