//Fiber Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 13.2.1
clc;
clear ;
//given

//case 1
lambda1=1540.56E-9;//wavelength in m
lambda2=1541.35E-9;//wavelength in m
d=5E-6;//grating pitch in m

x=lambda1/d;
theta1=asind(x);////Angle of separation in deg
y=lambda2/d;
theta2=asind(y);//Angle of separation in deg

Asep=theta2-theta1;//Angle of separation in deg
mprintf("Angle of separation = %.3f deg.",Asep);

//case 2

z=tand(theta2)-tand(theta1);
L=245E-6/z;//Length required to separate wavelength in m

mprintf("\nLength required to separate wavelength = %.3f m",L);//the answer vary due to rounding
