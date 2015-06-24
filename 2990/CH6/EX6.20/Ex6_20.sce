
clc; funcprot(0);
// Initialization of Variable
alpha=50.0;//angle in degrees
beta=46.0;//angle in degrees
f=300.0;//focal length in mm
xa=24.0;//x coordinate of a
xb=30.0;//x coordinate of b
pi=3.14;
//calculation
dela=xa/f;
delb=xb/f;
A=alpha+dela*180/pi;//angle A
B=beta-delb*180/pi;//angle B
D=180-A-B;
AD=1300.0*sin(B*pi/180)/sin(D*pi/180);
disp(round(AD),"distance of AD in m");
Y=6/(sqrt(xa**2+f**2))*AD;
RD=60.12+Y;
disp(RD,"RL of D in m");
clear()
