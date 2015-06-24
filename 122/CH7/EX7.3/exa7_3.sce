// Example 7-3
// Bode Plot in Hz

clear; clc;
xdel(winsid());  //close all windows

s = %s;
num = 10*(s + 3);
den = s * (s + 2) * (s^2 + s + 2);
G = syslin('c',num,den);

bode(G);
xtitle('Bode plot of G(s) = [10*(s + 3)]/[s*(s + 2)*(s^2 + s + 2)]');
