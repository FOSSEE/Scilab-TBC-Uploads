clc;
//page no 140
//prob no. 4.2
//An FM modulator is given which is modulated by sine wave 3V
v=3;
kf=30*10^3;
//Determination of peak value 
Em=v*sqrt(2);
//Determination of deviation delta
delta=kf*Em;
disp('kHz',delta/1000,'The value of deviation is ');