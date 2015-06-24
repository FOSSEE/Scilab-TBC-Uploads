// Example 7-25
// Verifying experimentally derived Transfer function

clear; clc;
xdel(winsid());  //close all windows

s = %s;
num = 320*(s + 2);
den = s * (s + 1) * (s^2 + 8*s + 64);
G = syslin('c',num,den);

bode(G,0.1,40);
xtitle('Bode plot of G(s) = [320*(s + 2)]/[s * (s + 1) * (s^2 + 8*s + 64)]');