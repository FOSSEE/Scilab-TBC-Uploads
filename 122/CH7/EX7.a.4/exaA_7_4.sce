// Example A-7-4
// Bode plot for different gain K

clear; clc;
xdel(winsid());  //close all windows

s = %s /2/%pi ;
P = s*(s+1)*(s+5);
num = [1,10,20];
den = [P+1 , P+10, P+20];
Gtf = num ./ den;
G = syslin('c',Gtf);

bode([G(1,1); G(1,2); G(1,3)],0.1,100,['K = 1';'K = 10';'K = 20'] );
xtitle('','rad/s');
a = gcf();set(a.children(1).x_label,'text','rad/s');