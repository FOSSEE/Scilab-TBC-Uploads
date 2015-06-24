clc;
clear;
sg=0.65;
l1=0.75;//ft
l2=0.5;//ft
//0.5 ft =z1(max)
//0.5=0.75*(ay(max)/g)
aymax=(0.5*32.2)/0.75;//ft/s^2
disp("ft/s^2",aymax,"The max acceleration that can occur before the fuel level drops below the transducer=")