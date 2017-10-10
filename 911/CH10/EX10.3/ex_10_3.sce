//example 10.3//
clc
//clears the screen//
clear
//clears all variables//
f=5/1000;
//full scale output in Amperes//
g=2^8;
//random value for use//
s=f/(g-1);
//step size = full scale output/ number of steps//
d=bin2dec('10000010')
//binary to decimal conversion//
ao=d*s;
//analog output of system//
e=.25*f/100;
//error =+-e//
r0=(ao-e)*1000;
//lower range of analog output//
r1=(ao+e)*1000;
//upper range of analog output//
disp(r0, 'lower range of analog output (in mA) is =');
disp(r1, 'upper range of analog output (in mA) is = ');