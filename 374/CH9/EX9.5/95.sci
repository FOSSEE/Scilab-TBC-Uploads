//chapter 9 example 5//
clc
clear
//numerical aperture=NA,distance from the screen to fibre end space=D,measured output pattern size=A//
A=6;//in cm//
D=10;//in cm//
NA=A/(sqrt((A^2)+4*(D^2)));
printf("\n numerical aperture=%f m\n",NA)