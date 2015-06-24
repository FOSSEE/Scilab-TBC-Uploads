//scilab 5.4.1
//Windows 7 operating system
//chapter 21 Communication Systems
clc
clear
R=6400//R=radius of the earth in km
He=110//He=height of the E layer above the earth surface in km
ime=asin(R/(R+He))//ime=angle corresponding to maximum frequency fmE for E layer in radian
format("v",10)
o=(%pi/2)-ime//o=angle made by the incident ray at the centre of the earth in degrees
format("v",5)
L=2*o*R//L=maximum distance between the transmitting and the receiving points on the earth surface for single hop transmission of the radiowave reflected from the E layer
format("v",5)
disp("km",L,"The maximum distance for single hop transmission is =")
//Answer given in textbook is 2459 km which is incorrect as it is actually around 2356 km.
