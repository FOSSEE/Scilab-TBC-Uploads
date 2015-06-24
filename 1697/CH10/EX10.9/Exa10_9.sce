//Exa 10.9
clc;
clear;
close;
//given data :
R=6370;//in Km
hm=400;//in Km
//Formula : d=2*R*Q=2*R*acos(R/(R+hm))
d=2*R*acos(R/(R+hm));//in Km
disp(d,"Maximum Range in a single range transmission in Km : ");