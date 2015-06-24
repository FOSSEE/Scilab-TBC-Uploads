//Example 6.10
clc;
clear;
close;
format('v',5);
//Given data :
g=9.81;//constant
H1=4-1;//meter
H2=4;//meter
Cv1=0.9;//Coefficient of velocity
Cv2=0.9;//Coefficient of velocity
//Cv1=Cv2 & x1=x2 at meeting point
//x1/sqrt(4*H1*y1)=x2/sqrt(4*H2*y2)
y1BYy2=H2/H1;
//y1=1+y2;
y2=1/(y1BYy2-1);//meter
y1=y1BYy2*y2;//meter
x1=Cv1*sqrt(4*H1*y1);//meter
disp(y1,x1,"Meeting point horizontal & vertical co-ordinates are(x1 & y1 in meter) : ");
//Answer in the book are not accurate.
