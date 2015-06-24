//EX12_17 Pg-12.33
clc
clear
disp(" equation of the Am sine wave =Vc(1+m*sinwm*t)*sinwc*t")
Vc=12;//amplitude of carrier voltage 
m=0.5;//modulation index
fc=10e6;//carrier frequency
fm=1e3;//modulated frequency
wc=2*%pi*fc;
wm=2*%pi*fm;
t=0:2.3148e-7:8e-4;
Vam=Vc*(1+m*sin(wm*t).*sin(wc*t))
fusb=fc+fm;//upper side band frequency
flsb=fc-fm;//lower side band frequency
A=m*Vc/2;//amplitude of side bands

//plotting of the graph
clf();
x=[ flsb flsb  ];//x-coordinate
y=[  0    A  ];//y-coordinate

plot2d(x,y,style=2)
x1=[10e6  10e6];//x-coordinate
y1=[ 0     12];//y-coordinate
plot2d(x1,y1,style=2)
x2=[fusb  fusb];//x-coordinate
y2=[ 0     A];//y-coordinate
plot(x2,y2)
x5=[flsb-1e3 flsb-1e3];//x-coordinate
y5=[    0       4    ];//y-coordinate
plot(x5,y5)
x6=[fusb+1e3 fusb+1e3];//x-coordinate
y6=[  0         4 ];//y-coordinate
plot2d(x6,y6)

xlabel('Frequency(Hz)');
ylabel('amplitude of carrier signal(V)');
title("Frequency Spectrum of AM wave")
xgrid(color("grey"));

