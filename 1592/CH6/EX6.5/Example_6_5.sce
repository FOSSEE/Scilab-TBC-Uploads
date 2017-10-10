//Scilab Code for Example 6.5 of Signals and systems by
//P.Ramakrishna Rao//Output of LPF
clc;
clear;
function [y]=delta(t)
    if t==0
    y=1
else y=0
    end
endfunction
for f=-100:100
    X(f+101)=delta(f+100)+delta(f-100)+3*[delta(f+90)+delta(f-90)];
end
f=-100:100;
a=gca();
a.x_location="origin";
a.y_location="origin";
plot2d3(f,X,-2);
title('Spectrum of x(t)');
xlabel('--&gt;  f');
fs=150;
n=-1;f-n*fs
    for f=-275:275
    X_delta1(f+276)=delta(f-n*fs+100)+delta(f-n*fs-100)+3*[delta(f-n*fs+90)+delta(f-n*fs-90)];
    end
n=n+1;
    for f=-275:275
    X_delta2(f+276)=delta(f-n*fs+100)+delta(f-n*fs-100)+3*[delta(f-n*fs+90)+delta(f-n*fs-90)];
end
n=n+1;
    for f=-275:275
    X_delta3(f+276)=delta(f-n*fs+100)+delta(f-n*fs-100)+3*[delta(f-n*fs+90)+delta(f-n*fs-90)];
end
X_delta=X_delta1+X_delta2+X_delta3;
figure(2);
f=-275:275;
plot2d3(f,X_delta,-2);
title('X_delta(f) at fs=150');
xlabel('---&gt;  f');