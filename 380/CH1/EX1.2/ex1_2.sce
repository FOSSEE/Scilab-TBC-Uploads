//Caption:Finding the current in the circuit and plot V vs T and I vs T curve
//Exa:1.2
clc;
clear;
close;
//Refer to figure 1.5a
L=1*10^-3;//henery
R=3;//ohms
C=200*10^-6;//faraday
disp("v(t)=14.142cos1000t")
V_m=14.142;//Peak value of applied voltage (in Volts)
V=V_m/sqrt(2);//RMS value of applied voltage (in Volts)
//On comparing with standard equation v(t)=acoswt
w=1000;//in radian/second
//Inductive impedance=jwL
Z_L=%i*w*L;//in ohms
//capacitive impedance=-j/wC
Z_c=-%i/(w*C);//in ohms
//Impedance of the circuit is given by
Z=Z_L+Z_c+R;//in ohms
I=V/Z//Current in the circuit//in Amperes
r=real(I);
i=imag(I);
magn_I=sqrt((r^2)+(i^2));//magnitude of current (in Amperes)
phase_I=atand(i/r);//phase of current (in degree)
disp(magn_I,'magnitude of current (in Amperes)');
disp(phase_I,'phase of current (in Degrees)');
xset('window',1);
xtitle("current -time plot","time (in Seconds)","current (in Amperes)");
z=linspace(0,20,10);
x=linspace(0,%pi,100);
z=2.828*cos((1000*x)+(atan(i/r)));
plot(x,z);
xset('window',2);
xtitle("voltage-time plot","time (in Seconds)","voltage (in Volts)");
x=linspace(0,%pi,100);
y=linspace(0,20,10);
y=14.142*cos(1000*x);
plot(x,y);