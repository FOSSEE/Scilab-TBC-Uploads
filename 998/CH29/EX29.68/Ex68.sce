//Ex:68
clc;
clear;
close;
R_e=6378;// in km
H=35786;// in km
E1=5;// min elevation angle in degree
E2=0;// min elevation angle in degree
x1=cos(E1*3.14/180);
x2=cos(E2*3.14/180);
R=R_e/(R_e+H);
P1=asin(R*x1);// in radian
P2=asin(R*x2);// in radian
a1=(P1)*180/3.14;// in degree
a2=(P2)*180/3.14;// in degree
y=175-(a1+a2);
printf("The angle subtended=%f degree", y);