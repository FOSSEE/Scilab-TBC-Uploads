
clc;
clear all;
//assuming open air transmission
f=25*1e6;//given signal frequency
//part a
c=3*1e8//c in m/s
w1=c/f;//wavelength in meter
disp(w1,'wavelength of signal in free space in meters');
//part b
c=9.84*1e8//c in ft/s
w2=c/f;//wavelength in feet
disp(w2,'wavelength of signal in free space in feet');

