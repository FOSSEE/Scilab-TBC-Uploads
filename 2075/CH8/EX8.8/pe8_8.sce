//example 8.8
clc;funcprot(0);
//Initialization of Variable
V=120;//line voltage
A=60;//degree
D=.35;
pi=3.14;
//calculation
Va=D*V;
disp(Va,"average voltage in V:")
Vd=V*2^.5*(cos(A*pi/180)+1)/2/pi;
disp(round(Vd),"dc voltage in V:")
printf('\nthe markers indicae Vp=163V Vave=41')
Vr=.9*V;
disp(Vr,"full-wave rms voltage in V:")
Vrms=V*(2^.5)*(.5*(pi-1.047)+.25*sin(2*A*pi/180))^.5/pi^.5;
disp(Vrms,"rms voltage in V:")
printf('\nthe markers indicate Vp=169V Vave=106V')
clear()
