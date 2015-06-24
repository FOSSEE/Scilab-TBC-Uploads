clear; clc; close;

Vm = 20;
Vdc = -0.318*Vm;

disp(Vdc,'Dc volatge for ideal diode :');


t = 0:0.1:4*%pi;
x = 20*sin(t);

for i=1:length(t)
    if(x(i)<=0)
       y(i) = x(i);
    else y(i)=0
    end
end           

plot(t,y)
xtitle('output for ideal diode','t','Vo');