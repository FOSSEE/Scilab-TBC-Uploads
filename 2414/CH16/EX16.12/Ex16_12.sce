clc;
close();
clear();
//page no 532
//prob no. 16.12
c=186000;    //speed of light in mi/s
fc=10*10^9;   //Hz
fD=2*10^3;    //frequency shift in Hz
v=c*fD/(2*fc);  //speed in mi/s
mprintf('Speed of automobile , v=%.2f*10^-3 mi/s \n',v*10^3);
v=3600*v;
mprintf(' v=%.1f mi/hr \n',v);
