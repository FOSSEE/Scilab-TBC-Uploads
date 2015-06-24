clc;
//page no 139
//prob no. 4.1
//An FM modulator is given with kf=30kHz/V operate at carrier freq 175MHz
fc=175*10^6;kf=30*10^3;
//a)Determination of o/p freq for modulating signal value em1=150mV 
em1=150*10^-3;
fsig1=fc+(kf*em1);
disp('MHz',fsig1/(10^6),'a)The value of o/p freq is ');
//b)Determination of o/p freq for modulating signal value em2=-2V 
em2=-2;
fsig2=fc+(kf*em2);
disp('MHz',fsig2/(10^6),'b)The value of o/p freq is ');