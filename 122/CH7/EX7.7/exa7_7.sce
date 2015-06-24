// Example 7-7
// Bode Plot for a system in State Space representation

clear; clc;
xdel(winsid());  //close all windows

A = [0 1; -25 -4];
B = [0 ; 25];
C = [1 0];
D = [0];
G = syslin('c',A,B,C,D);

omega = logspace(-1,2,100);
f = omega / 2 / %pi;
repf = repfreq(G,f);    // Frequency response
              
bode(omega,repf);
xtitle('Bode Diagram','rad/s');
a = gcf();set(a.children(1).x_label,'text','rad/s');


