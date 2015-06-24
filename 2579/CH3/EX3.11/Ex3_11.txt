//Ex:3.11
clc;
clear;
close;
// The given pattern is defined as
// f(x)=1,   0<x<pi/3
// f(x)=0,   pi/3<x<2*pi/3
// f(x)=1,   2*pi/3<x<pi
// It will, of course, by symmetrical about the line of the array x=0. If the spacing is closer to be y/2, then p=pi*cos(x)+a
// f(p)=1,     pi+a > p > pi/2+a
// f(p)=0,     pi/2+a > p > -pi/2+a
// f(p)=1,     -pi/2+a > p > -pi+a
// choosing a=-pi for an end fire array results in the function shown in figure in the given text book. The fourier series expansion for this function is
// F(p)=(1/2)+((2/pi)*sigma(1/k*sin(k*pi/2)*cos(kp))), k varies from 1 to infinite
// Therefore the coefficient
// ao=1/2
// ak=(1/pi*k)*(sin(pi*k/2))
// bk=0, k not equal to 0
// The pattern obtained using the value of m=4 is given as
// mode(E)= (1/pi)*(-(1/3)*z^-3)+z^-1+pi/2+z-(1/3)*z^3
printf("The fire element array having the current ratios indicated and an overall length of three wavelength (the apparent spacing between elements is one half wavelength, but four of the elements are missing). The pattern produced by this array is shown in figure in the given textbook")