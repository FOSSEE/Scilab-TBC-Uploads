clc
L=10*10^-3;             //ASssigning values to parameters
Im=5; 
w=2000;
function y=f(t), y=Im*sin(w*t+%pi/2),endfunction
I=Im/sqrt(2);
Xl=2*%pi*L;
Vm=L*Im*w;
Vl=Vm/sqrt(2);
disp("Volts",Vl,"Voltage Vl");