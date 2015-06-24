// Example 7-5
// Bode Plot in rad/s

clear; clc;
xdel(winsid());  //close all windows

s = %s;
num = 25;
den = s^2 + 4*s + 25;
G = syslin('c',num,den);

bode(G);
xtitle('Bode plot of G(s) = 25 / s^2 + 4*s + 25');

// Note, bode plots in Sci-Lab use the frequency in Hz and not in
// rad/s . If we wish to get the plot with rad/s we can...

omega = logspace(-2,2,50);
f = omega / 2 / %pi;
repf = repfreq(G,f);    // calculate the frequency response
                        // repf is a vector of complex numbers
scf();
bode(omega,repf);
xtitle('Bode plot of G(s) = 25 / s^2 + 4*s + 25','rad/s');
a = gcf();set(a.children(1).x_label,'text','rad/s');

