clc;
close();
clear();
//page no 408
//prob no. 12.7
R=50 ; //ohm
G=10^8;  //gain
kT0=4*10^-21;
So=G*kT0;
mprintf('Output spectral density So(f)=%.0f fW/Hz',So*10^15);
