//scilab 5.4.1
//Windows 7 operating system
//chapter 9 Basic Voltage and Power Amplifiers
clc
clear
//AVm=mid-band gain of an RC-coupled amplifier
fm=60//fm=frequency in Hz corresponding to the mid-band gain
//AVl=reduced gain
//AVh=AVl
f=600*10^3//f=frequency in Hz corresponding to the reduced gain
fl=30//fl=The lower half-power frequency in Hz
fh=300*10^3//fh=The upper half-power frequency in Hz
//|AVl|=(|AVm|)/sqrt(1+(fl/fm)^2)
//Suppose (AVl/AVm)=a=low frequency gain with respect to the mid frequency gain
//a=1/sqrt(1+(fl/fm)^2)//a=magnitude of the low frequency gain
a=1/sqrt(1+(fl/fm)^2)
format("v",5)
o=atand(fl/fm)//o=phase angle in degree of the low frequency gain
format("v",5)
disp("For the low frequency gain with respect to the mid frequency gain ")
disp(a,"Magnitude=")
disp("degree",o,"Phase angle=")
//|AVh|=(|AVm|)/sqrt(1+(f/fh)^2)
//Suppose (AVh/AVm)=b=high frequency gain with respect to the mid frequency gain
//b=1/sqrt(1+(f/fh)^2)//b=magnitude of the high frequency gain
b=1/sqrt(1+(f/fh)^2)
format("v",6)
O=-atand(f/fh)//O=phase angle in degree of the high frequency gain
format("v",6)
disp("For the high frequency gain with respect to the mid frequency gain ")
disp(b,"Magnitude=")
disp("degree",O,"Phase angle=")

