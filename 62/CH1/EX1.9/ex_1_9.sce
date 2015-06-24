//ex_9 to show that e^iwt is periodic with T=2*pi/W0
clear;
clc;
close;
t=0:1/100:10;
w0=1;
T=2*%pi/w0;
x=exp(%i*w0*t);
y=exp(%i*w0*(t+T));
if ceil(x)==ceil(y) then
    disp('e^iwt is periodic with T=2*pi/W0')
else
    disp('nonperiodic')
end