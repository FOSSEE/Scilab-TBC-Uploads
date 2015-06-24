clear; clc; close;

Vi_max = 10;
Vo_max = 0.5*Vi_max;

Vdc = 0.636*Vo_max;

disp(Vdc,'Required Dc voltage :');

t = 0:0.1:2*%pi;
x = 10*sin(t);

for i=1:length(t)
    if(x(i)>=0)
       y(i) = x(i);
    else y(i)=0;
    end
end           

plot(t,y)
xtitle('output waveform','t','Vo');