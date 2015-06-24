clc();
clear;
// To calculate the magnetic dipole moment and torque
r=0.04;    //radius of circular loop in m
i=1000;    //current in mA
i=i*10^-3;    //current in amp
B=10^-3;    //magnetic flux density in Wb/m^2
theta=45;    //angle in degrees
A=%pi*(r^2);
mew=i*A;
tow=i*B*cosd(theta);
printf("the magnetic dipole moment is %f amp m^2",mew);
printf("the torque is %f Nm",tow);
