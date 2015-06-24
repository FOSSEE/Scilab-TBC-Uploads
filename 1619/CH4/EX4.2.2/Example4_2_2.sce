//Example 4.2.2 page 4.15

clc;
clear;

W= 25*10^-6;
Vd= 3*10^4;
Bm= Vd/(2*%pi*W);
RT= 1/Bm;
RT=RT*10^9;  //converting ns for displaying...
printf("The maximum response time is %.2f ns",RT);
