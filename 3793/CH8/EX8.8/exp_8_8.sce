clear;
clc;
R=4;
f=50;
H=4;
tc=.2;
angle=50;
T12=tc*cosd(angle);

FF=(1/(2*%pi))*sqrt((2*%pi*f*T12/H)-((f/(4*R*H))^2));
mprintf("Oscillating Frequency is %.2f Hz ",FF);
