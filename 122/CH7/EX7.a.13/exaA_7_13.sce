// Example A-7-13
// Nyquist plot with points plotted at selected frequencies 

clear; clc;
xdel(winsid());  //close all windows

s = %s /2 /%pi;
num = 20 * ( s^2 + s + 0.5);
den = s * (s + 1) * (s + 10);
G = syslin('c',num,den);

a = gca();
a.clip_state = 'on';
nyquist(G,0.01,1000);
xtitle('Nyquist Diagram');
a.data_bounds = [-2 -5 ; 3 0];
a.box = 'on';

omega = [0.2 0.3 0.5 1 2 6 10 20];
z = repfreq(G,omega);
plot(real(z), imag(z),'.k');

x = [1     1.1  1.2   1.3   1.8  1.5  0.8  0.25];
y = [-4.7 -3.3 -1.7  -0.51 -0.4  -1  -1.3  -1];
text = ['w = 0.2' '0.3' '0.5' '1.0' '2.0' '6.0' '10' '20'];
xstring(x,y,text,0,1);

[phi db] =phasemag(z);
mag = abs(z);
disp([omega' mag' phi'] , '[w mag phi] = ');


