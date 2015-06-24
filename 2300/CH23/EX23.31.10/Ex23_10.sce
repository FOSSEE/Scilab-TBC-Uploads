//scilab 5.4.1
//Windows 7 operating system
//chapter 23 Lasers,Fibre Optics,and Holography
clc
clear
u1=1.55//u1=refractive index of the core of the fibre
u2=1.50//u2=refractive index of the cladding
oa=asind(sqrt((u1^2)-(u2^2)))//oa=acceptance angle
format("v",5)
disp("degree",oa,"The acceptance angle is =")
NA=sind(oa)//NA=numerical aperture
disp(,NA,"NA=")
oc=asind(u2/u1)//oc=critical angle
disp("degree",oc,"Critical angle=")
d=50*10^-6//d=core diameter in meters
x=d*tand(oc)//x=axial distance traversed by the ray between two consecutive reflections
n=1/x//n=number of reflections per metre
disp(,n,"The number of reflections per metre is =")
