clc;
//e.g 7.8
VDmin=1.5;
VDmax=2.3;
Vs=10;
R1=470;
Imax=(Vs-VDmin)/R1;
disp('mA',Imax*10**3,"Imax=");
Imin=(Vs-VDmax)/R1;
disp('mA',Imin*10**3,"Imin=")
