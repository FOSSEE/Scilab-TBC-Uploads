clc;

//e.g 7.9
VDmin=1.8;
VDmax=3;
Vs1=24;
Rs1=820;
Vs2=5;
Rs2=120;
Imin=(Vs2-VDmax)/Rs2;
disp('mA',Imin*10**3,"Imin=");
Imax=(Vs1-VDmin)/Rs1;
disp('mA',Imax*10**3,"Imax=");
Imin=(Vs2-VDmax)/Rs2;
disp('mA',Imin*10**3,"Imin=");
Imax=(Vs2-VDmin)/Rs2;
disp('mA',Imax*10**3,"Imax=");
