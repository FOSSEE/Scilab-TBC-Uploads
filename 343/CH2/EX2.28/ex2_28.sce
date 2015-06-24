clc
V=150;               //Assigning values to parameters
f=50;
L=0.2;
Xl=2*%pi*f*L;
Vm=V*sqrt(2);
I=V/Xl;
Im=sqrt(2)*I;
function y=f(t), y=Vm*sin(2*%pi*f*t),endfunction
function y1=f(t), y1=Im*sin(2*%pi*f*t-(%pi/2)) endfunction
disp("Volts",Vm,"Maximum voltage value");
disp("Amperes",Im,"Maximum current value");