//clc();
clear;
//To determine the magnetic dipole moment and torque
r=0.04;       //radius of circular loop in m
i=1;       //current in A
B=10^-3;      //magnetic flux density in Wb/m^2
theta=45;      //angle in degrees
A=%pi*(r^2);
mew=i*A;
tow=i*B*cosd(theta);
//disp(mew);
//disp(tow);
printf("magnetic dipole moment is %f amp m^2",mew);
printf("torque on the coil is %f Nm",tow);
