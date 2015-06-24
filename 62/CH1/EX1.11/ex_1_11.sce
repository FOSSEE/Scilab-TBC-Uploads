clear;
clc;
close;
n=0:100;
w0=1;
N=2*%pi/w0;
x=exp(%i*w0*n);
y=exp(%i*w0*(n+N));
if ceil(x)==ceil(y) then
    disp('e^iwn is periodic with N=2*pi/W0')
else
    disp('nonperiodic')
end