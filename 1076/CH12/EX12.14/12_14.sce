clear;
clc

I=5;
z1=400
z2=50
V=I * z1* z2/(z2+z1)
mprintf("\nSurge Voltage Transmitted= %f kV",V)
ic=V/z2
mprintf("\nSurge Current Transmitted in cable= %f kA",ic)

io=-V/z1;
mprintf("\nSurge Current Transmitted in OH line= %f kA",io)
