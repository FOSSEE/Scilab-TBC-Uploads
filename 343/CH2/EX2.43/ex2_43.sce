clc
function i=f(t), i=5*sin(314*t+2*%pi/3), endfunction;   //Defining functions
function v=f1(t), v=20*sin(314*t+5*%pi/6), endfunction;
I=-1.77+3.065*%i;
V=-12.24+7.07*%i;
Z=V/I;
[r,t]=polar(Z);
P=V*I*cos(t);
[ro,theta]=polar(P);
disp("Ohms",r,"Impedance");
disp("Watts",ro,"Average Power");