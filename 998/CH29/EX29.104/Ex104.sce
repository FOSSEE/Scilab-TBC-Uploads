//Ex:104
clc;
clear;
close;
b=30-25;// in degree
r=42164;//orbit radius in km
d_a=38000;// in km
d_b=36000;// in km
x=1-cos(b*3.14/180);
y=acos((d_a^2+d_b^2-2*r*r*x)/(2*d_a*d_b))// in radian
z=y*180/3.14;// in degree
d=1.414*r*sqrt(1-0.996);
D=1.414*r*0.063;
printf("The angular separation of the two satellites=%f degree", z);
printf("\n The separation distance of the two satellites=%f km", D);