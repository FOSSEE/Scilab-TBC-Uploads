// Example 8.10 //optical power budget
clc;
clear;
close;
mip=-10;//dBm
mop=-41;//dBm
tsm=mip-mop;//dB
disp(tsm,"total system margin in dB is")
l=7;//km
fcl=2.6;//dB
lfc=l*fcl;//fiber cable loss in dB
sl=0.5;//dBm
slc=sl*(l-1);//dB
cl=1.5;//dB
sm=6;//dB
tsm1=lfc+slc+cl+sm;//dB
disp(tsm1,"total system margin in dB is")
epm=tsm-tsm1;//dB
disp(epm,"excess power margin in dB is")
