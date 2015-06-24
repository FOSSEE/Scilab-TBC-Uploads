//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 12.11
//calculation of the amplitude of the simple harmonic motion

//given data
//x1 = (2.0 cm)*sind(w*t)
//x2 = (2.0 cm)*sind((w*t) + (180/3))
A1=2//amplitude(in cm) of the wave 1
A2=2//amplitude(in cm) of the wave 2
delta=180/3//phase difference(in degree) between the two waves

//calculation
A=sqrt(A1^2+A2^2+(2*A1*A2*cosd(delta)))//amplitude of the resultant wave

printf('the amplitude of the simple harmonic motion is %3.1f cm',A )
