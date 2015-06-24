// Example A-7-1
// Bode plot

clear; clc;
xdel(winsid());  //close all windows

s = %s /2 /%pi; // frequencies in rad/s
G = syslin('c', 10*(s + 1), (s + 2)*(s + 5));
bode(G,0.1,100);
xtitle('Bode plot of G(s) = 10*(s + 1)/[(s + 2)*(s + 5)]','rad/s');
a = gcf();set(a.children(1).x_label,'text','rad/s');
