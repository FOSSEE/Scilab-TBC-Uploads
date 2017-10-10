clc;
t=-12:0.01:12
x=sin(2*t)+cos(t)+0.5*(sin(3*t)-sin(t))
h=-sin(2*t)+cos(t)-0.5*(sin(3*t)-sin(t))
e=cos(t)//(x+h)/2
o=(x-h)/2//sin(t)+0.5*(sin(3*t)-sin(t))
subplot(3,1,1)
plot(t,e)
xtitle('even signal')
subplot(3,1,2)
plot(t,o)
xtitle('odd signal')
