//scilab 5.4.1
//Windows 7 operating system
//chapter 9 Basic Voltage and Power Amplifiers
clc
clear
AVm=120//AVm=mid-band gain of an RC-coupled amplifier
fm=100//fm=frequency in Hz corresponding to the mid-band gain
AVl=60//AVl=reduced gain
AVh=AVl
f=100*10^3//f=frequency in Hz corresponding to the reduced gain
//|AVl|=(|AVm|)/sqrt(1+(fl/fm)^2) where fl=lower half power frequency
fl=sqrt((abs(AVm)/abs(AVl))^2 -1)*fm
format("v",6)
disp("Hz",fl,"The lower half-power frequency is =")
//|AVh|=(|AVm|)/sqrt(1+(f/fh)^2) where fh=upper half power frequency
fh=f/sqrt((abs(AVm)/abs(AVh))^2 -1)
format("v",5)
disp("kHz",fh/10^3,"The upper half-power frequency is =")//fh is converted in terms of kHz
