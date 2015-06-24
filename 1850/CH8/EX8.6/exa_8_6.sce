// Exa 8.6
clc;
clear;
close;
//given data
omega= 200*%pi;// in radians/seconds
f=omega/(2*%pi);// in Hz
T=1/f;// in sec
T=T*10^3;//in ms
Vin= 7;//in volt
t1= 1/omega*asin(6/Vin);// in sec
t1=t1*10^3;// in ms
// The output of the schmitt trigger is at -10 volt
t1= T/2+t1;// in ms
// The output of the schmitt trigger is at +10 volt
t2= 10-t1;// in ms
disp(t1,"The output of the schmitt trigger is at -10 volt in ms")
disp(t2,"The output of the schmitt trigger is at +10 volt in ms")
