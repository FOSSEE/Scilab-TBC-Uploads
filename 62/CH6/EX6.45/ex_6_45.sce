close;
clear;
clc;
disp("Hc(s)=s")
disp(" bilinear transformation s=2*(1-z^-1)/Ts*(1+z^-1)");
disp("Hd(z)=2*(1-z^-1)/Ts*(1+z^-1)")
//z=e^-j*w*Ts
w=-1:0.01:1;
Ts=2;
Hdw=2*(1-%e^(-%i*w*Ts))./(1+%e^(-%i*w*Ts));
//HdwTs=2*tan(w*Ts/2)/Ts;
plot(w*Ts,imag(Hdw));
xtitle('Hd(w)','w')