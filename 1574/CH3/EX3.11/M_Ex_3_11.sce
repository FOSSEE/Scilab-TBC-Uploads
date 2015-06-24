clf();
clc
//Chapter3: Modulation
//Example3.11, page no 144
//Given
deff("[y]=f(x)","y=Ec*(1+ma*(sin(wm*x)))*sin(wc*x)")
Ec=10,ma=0.5,wm=10000*%pi,wc=2*%pi*1e7
x=[0:0.01:20]*%pi/10;
subplot(2,1,1)
fplot2d(x,f)
xlabel("t", "fontsize", 3);
ylabel("Modulated Wave", "fontsize", 3, "color", "red");
Fc=wc/(2*%pi)
Fm=wm/(2*%pi)
Fusb=(wm+wc)/(2*%pi)
Flsb=(wm-wc)/(2*%pi)
mprintf('USB freq=%d k5Hz\nUSB amplitude=%f V\nLSB freq=%d kHz\nLSB amplitude=%f V\nCarrier amplitude=%d V',Fusb*1e-3,2.5,Flsb*-1e-3,2.5,10)
F=[0,2.5,10,2.5,0]
T=[-2,-1,0,1,2]
subplot(2,1,2)
plot2d3(T,F,5)
xlabel("Freq", "fontsize", 3);
ylabel("Amplitude", "fontsize", 3, "color", "blue");
xlabel("fc-fm                              fc                                fc+fm", "fontsize", 2);
