// Example A-7-18
// Verifying experimentally derived Transfer function

clear; clc;
xdel(winsid());  //close all windows

s = %s /2 /%pi; // frequencies in rad/s
G = syslin('c', 4*(2*s + 1), s*s*(s^2 + 0.4*s + 4) );
bode(G,0.1,100);
xtitle('Bode plot of G(s) = 4*(2*s + 1)/[s*s*(s^2 + 0.4*s + 4)]','rad/s');
a = gcf();set(a.children(1).x_label,'text','rad/s');
