clear;
clc;
close;
wLPF=-3:0.1:3;
wc=1;
for i=1:length(wLPF)
    if wLPF(i)>-wc & wLPF(i)<wc then
        HwLPF(i)=1;
    else
        HwLPF(i)=0;
    end
end
subplot(2,1,1)
plot(wLPF,HwLPF)
a=gca()
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
title("low pass filter")
disp("given h[n]=(-1)^n * hLPF[n]=e^(j*%pi*n) * hLPF[n]");
disp("by shifting property H(w)=HLPF(w-%pi)")
w=wLPF+%pi;
subplot(2,1,2)
plot(w,HwLPF)
a=gca()
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
title("high pass filter")
