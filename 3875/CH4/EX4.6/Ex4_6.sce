clc;
clear;
Y1=1*10^-3 //distance of the point from the screen in m for first case
D=1 //distance between the slit and the screen in m
d=1*10^-3 //distance between the slits in m
lambda=5893*10^-10 //wavelength in m
phase_diff2=%pi/2 //phase difference when intensity is half the maximum

//calculation
delta_1=(Y1*d)/D //path difference in  m
phase_diff=(2*%pi*delta_1)/lambda //phase difference in radian
Ratio=cos(phase_diff/2)^2
mprintf("\nThe ratio of intensity with the central maximum is = %1.4f\n",Ratio) 
//The answer provided in the textbook is wrong.

delta_2=(phase_diff2*lambda)/2*%pi
Y2=(delta_2*D)/d
mprintf("The distance of the point on the screen from the centre is %1.3e m",Y2)
//The answer provided in the textbook is wrong.
