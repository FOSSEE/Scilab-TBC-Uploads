//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 9.1w
//Locating the centre of maass of the system

//given data
m1=.50//mass(in kg) at point1
m2=1//mass(in kg) at point2
m3=1.5//mass(in kg) at point3
x1=0//x coodinate (in cm) of point1
x2=4//x coodinate (in cm) of point2
x3=0//x coodinate (in cm) of point3
y1=0//y coodinate (in cm) of point1
y2=0//y coodinate (in cm) of point2
y3=3//y coodinate (in cm) of point3

//calculation
X=((m1*x1)+(m2*x2)+(m3*x3))/(m1+m2+m3)
Y=((m1*y1)+(m2*y2)+(m3*y3))/(m1+m2+m3)

printf('The centre of mass is %3.1f cm right and %3.1f cm left above the .5 kg paticle.',X,Y)
