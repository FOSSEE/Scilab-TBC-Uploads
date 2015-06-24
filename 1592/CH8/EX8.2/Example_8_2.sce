//Scilab Code for Example 8.2 of Signals and systems by
//P.Ramakrishna Rao
//Second order system
clear;
clc;
syms t;
L=1;
R=1.2;
C=10^-6;
Rcr=2*sqrt(L/C);
eta=R/Rcr;
disp(eta,'Damping Ratio=',Rcr,'Critical Resistance (ohm)','(i)');
Wn=1/sqrt(L*C);
disp(Wn,'Undamped Natural Frequency(Hz)','(ii)');
n=1;
h=(1250*sin(800*t))*exp(-600*t);
H=laplace(h,t,'jW');
for t=0:0.1:2;
    h(n)=(1250*sin(800*t))*exp(-600*t);//Impulse Response
    n=n+1;
end
t=0:0.1:2;
plot(t,h);
title('Impulse Response');
ylabel('Amplitude');
xlabel('time in seconds');
disp(H,'(iv)Transfer Function(H(jw)):');



