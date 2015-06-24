//Scilab Code for Example 7.10 of Signals and systems by
//P.Ramakrishna Rao
clear;
clc;
disp('h(t)=e^-2*t.u(t)');
for w=1:100
    y(1,w)=integrate('exp(-2*t)','t',0,w);
end
w=1:100;
plot(w,y)
title('Output Signal y(t)');
xlabel('Time');
ylabel('Amplitude');
