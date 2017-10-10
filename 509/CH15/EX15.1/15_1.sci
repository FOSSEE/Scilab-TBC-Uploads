//Chapter 15 Example 1//
clc
clear
//output voltage=vd,commutation angle=u//
//ac output voltage=em//
u=20;// in degrees//
em=110*sqrt(2)/sqrt(3);
vdo=3*sqrt(3)*em/%pi;
//delay angle=a//
a=30;//in degrees
vd=vdo*(cosd(a)+cosd(a+u))/2;
printf("\n DC Output voltage when delay angle is 30 degrees = %.2f kV\n",vd);
a=90;
vd=vdo*(cosd(a)+cosd(a+u))/2;
printf("\n DC Output voltage when delay angle is 90 degrees = %.2f kV\n",vd);
a=150;
vd=vdo*(cosd(a)+cosd(a+u))/2;
printf("\n DC Output voltage when delay angle is 150 degrees = %.2f kV\n",vd);