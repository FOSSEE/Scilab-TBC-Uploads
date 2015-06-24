//Ex:71
clc;
clear;
close;
r=6378;//radius of earth in km
h=35786;// height in km
r_o=2000;// in km
x=37.4;// in degree
i_e=x/2;// in degree
y=asin(i_e/23.4);
y1=y*180/%pi;// in degree
y2=floor(y1);
t=(365*y2*%pi)/(2*%pi*180);// in days
A=acos(r/(r+h));
B=A*180/%pi;// in degree
y_mx=180-2*B;
C=(asin((y_mx/2)/23.4))*(180/%pi);// in degree
t2=(365*C*%pi)/(2*%pi*180);// in days
printf("The total time of eclipse=%f days",t);
printf("\n The total time for geostationary orbit=%f hours",t2);