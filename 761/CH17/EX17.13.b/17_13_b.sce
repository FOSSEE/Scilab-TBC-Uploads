clc;
//page no 660
//prob no. 17.13.b
tp=10^-6;//pulse duration of pulse radar
f=10^3;//operating freq in Hz
//The maximum unambiguous range is 
Rmax=c/(2*f);
disp('m',Rmax,'The maximum range is ');
//The minimum unambiguous range is 
Rmin=c*tp/2;
disp('m',Rmin,'The minimum range is ');