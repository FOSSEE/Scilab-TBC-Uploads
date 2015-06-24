clc;
//page no 621
//prob no. 17.1
//TE10 mode in air dielectric mode with inside cross sectn=2cm*4cm
//Determination of cut-off freq 
a=4*10^-2;//largest dimn is used for calculation 
c=3*10^8;//Speed of light in m/s
fc=c/(2*a);
//Determination of dominant mode of propagation over 2:1
MUF=2*fc;
disp('Hz',MUF,'The max usable freq is');