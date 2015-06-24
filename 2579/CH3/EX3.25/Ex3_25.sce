//Ex:3.25
clc;
clear;
close;
D=30;// directive gain
// D=4L/y=4Nd/y, where L=Nd
// then 30=4L/y
// L=7.5y
L=30/4;
// FNBW=2*sqrt(2y/Nd)=2*sqrt(2y/7.5y)
// =2*sqrt(2/7.5)
FNBW=2*sqrt(2/7.5);// FNBW for end fire array in radian
Fnbw=FNBW*180/%pi;// FNBW for end fire array in degree
// FNBW1=2y/Nd=2y/7.5y=2/7.5
FNBW1=2/7.5;// FNBW for broad side array in radian
Fnbw1=FNBW1*180/%pi;// FNBW for broad side array in degree
printf("The array length= %f*y, where y is wavelength", L);
printf("\n The FNBW for end fire array = %f degree", Fnbw);
printf("\n The FNBW for broad side array = %f degree", Fnbw1);