//Example No. 14.10.6
clc;
clear;
close;
format('v',6);
P=35;//W(Transmitter power
ht=45;//m(transmitter height)
hr=25;//m(receiver height)
f=90;//MHz(frequency)
c=3*10^8;//m/s(Speed of light)
d=4.12*[sqrt(ht)+sqrt(hr)];//km(line of sight distance)
disp(d,"Distance of line of sight communication in km : ");
lambda=c/(f*10^6);//m(Wavelength)
ER=88*sqrt(P)*ht*hr/(lambda*(d*1000)^2);//V/m(Field strength)
disp(ER*10^6,"Field strength in micro Volt/meter : ");
//Answer is wrong in the textbook.
