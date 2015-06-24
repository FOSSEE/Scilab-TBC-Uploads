//scilab 5.4.1
//Windows 7 operating system
//chapter 23 Lasers,Fibre Optics,and Holography
clc
clear
o=5*10^-5//o=angular spread in radians
f=10//f=focal length in cm
D=f*o//D=diameter of the image
r=(D/2)//r=image radius
format("v",15)
disp("cm",r,"The image radius is =")
a=%pi*(r^2)//a=cross sectional area of the image in cm^2
P=10*10^-3//P=power in Watts
PD=P/a//PD=power density
format("v",10)
disp("W/cm^2",PD,"Power density is =")
y=6000*10^-8//y=wavelength in cm
d=y/o//d=coherent width
disp("cm",d,"The lateral coherent width is =")
