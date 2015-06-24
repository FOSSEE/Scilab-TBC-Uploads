// Example 8.14.a //optical power budget
clc;
clear;
close;
mip=-10;//dBm
mop=-25;//dBm
tsm=mip-mop;//dB
disp(tsm,"total system margin in dB is")
l=2;//km
fcl=3.2;//dB
lfc=l*fcl;//fiber cable loss in dB
sl=0.8;//dBm
slc=sl*l;//dB
cl=1.6;//dB
sm=4;//dB
tsm1=lfc+slc+cl+sm;//dB
disp(tsm1,"total system margin in dB is")
epm=tsm-tsm1;//dB
disp(epm,"excess power margin in dB is")
