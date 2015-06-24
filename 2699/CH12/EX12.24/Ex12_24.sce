//EX12_24 Pg-41.47 
clc 
clear
V=5;//amplitude of modulating voltage
R=1;//frequency deviation constant in KHz/V
fd=V*R;// frequency deviation in kHz
fm=15;//modulating frequency in kHz
mf=fd/fm;//modulation index
printf(" \n modulation index mf=%.3f",mf); 
disp("Now we refer from the table-12.2 of Bessel function ")
printf(" \n For modulation index mf=%.3f we take the value of J0,J1,and J2 ",mf); 
J0=0.96;//for carrier frequency
J1=0.18;//first side frequency
J2=0.02;//second side frequency
A=5//amplitude of the carrier frequency
J0=J0*A;//for carrier frequency
J1=J1*A;//first side frequency
J2=J2*A;//second side frequency
printf("\n J0=%.1fV\n J1=%.1fV\n J2=%.1fV ",J0,J1,J2)
disp("Now we plot the frequency spectrum")
clf()
x=[ 89.97    89.97];//x-coordinate
y=[  0       0.1];//y-coordinate
plot2d(x,y,style=2)
x1=[89.985   89.985];//x-coordinate
y1=[  0      0.9];//y-coordinate
plot2d(x1,y1,style=2)
x2=[90    90];//x-coordinate
y2=[ 0   4.8];//y-coordinate
plot(x2,y2)
x3=[90.015 90.015];//x-coordinate
y3=[  0     0.9];//y-coordinate
plot(x3,y3)
x4=[90.03 90.03];//x-coordinate
y4=[  0     0.1];//y-coordinate
plot(x4,y4)
x5=[90.04 90.04];//x-coordinate
y5=[  0     5];//y-coordinate
plot(x5,y5)
x6=[ 89.96  89.96];//x-coordinate
y6=[  0      5];//y-coordinate
plot2d(x6,y6)
xlabel('Frequency(MHz)');
ylabel('amplitude of carrier signal(V)');
title("Frequency Spectrum")
xgrid(color("grey"));
