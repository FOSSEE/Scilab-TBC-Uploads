//scilab 5.4.1
//Windows 7 operating system
//chapter 20 Cathode Ray Oscilloscope
clc
clear
//Let fv=frequency of the vertical signals in kHz
//fh=frequency of the horizontal signals 
//Number of horizontal tangencies=nh
//Number of vertical tangencies=nv
//fv/fh=nh/nv
fh=1
nh=3
nv=4
fv=(nh/nv)*fh
disp("Hz",fv*1000,"The frequency of the vertical signal is =")

