// Example 7-23
// Frequency charecteristics 
clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "/<your code directory>/";
// exec("freqch.sci");

s = %s /2 /%pi; // frequencies in rad/s
G = 1 / (s * (0.5*s + 1) * (s + 1));
H = syslin('c',G /. 1);
omega = logspace(-1,1,200);

[Mr wr bw repf] = freqch(H,omega);
bode(omega,repf);
xtitle('Bode Diagram','rad/s');
a = gcf();set(a.children(1).x_label,'text','rad/s');

