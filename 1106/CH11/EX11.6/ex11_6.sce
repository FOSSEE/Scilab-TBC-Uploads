// Example 11.6, Page No-466
clear
clc

Vr=10
R=10*10^3
I1=Vr/(2*R)
I1n=I1*1000
printf('\nI1= %.1f mA', I1n)
I2=I1/2
I2n=I2*1000
printf('\nI2= %.2f mA', I2n)
I3=I1/4
I3n=I3*1000
printf('\nI3= %.2f mA', I3n)

Io=I1+I2+I3
Ion=Io*1000
printf('\nIo= %.3f mA', Ion)

Vo=-1*Io*R
printf('\nOutput Voltage Vo= %.2f V', Vo)
