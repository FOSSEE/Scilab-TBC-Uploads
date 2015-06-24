C=318*10^-6;         //Assignig values to parameters
V=230;
f=50;
Xc=1/(2*%pi*f*C);
I=V/Xc;
Vm=sqrt(2)*V;
Im=sqrt(2)*I;
function y=f(t), y=Vm*sin(2*%pi*f*t),endfunction
function y1=f(t), y1=Im*sin(2*%pi*f*t+%pi/2),endfunction
disp("Volts",Vm,"Peak voltage value");
disp("Amperes",Im,"Peak currnet value");