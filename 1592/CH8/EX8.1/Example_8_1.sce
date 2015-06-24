//Scilab Code for Example 8.1 of Signals and systems by
//P.Ramakrishna Rao
//First Order causal LTI system
clear;
clc;
syms s t;
Y=1/(s+6);
h=exp(-6*t);
H=laplace(h,t,'jw');
disp(H,"H(w)=");
n=1;
for w=-5*2*%pi:0.01:5*2*%pi
    Hmag(n)=1/sqrt(36+w^2)
    Hphs(n)=-atan(w/6);
    n=n+1;
end
w=-5*2*%pi:0.01:5*2*%pi;
plot(w,Hmag);
title('Impulse Response');
ylabel('Amplitude');
xlabel('time in seconds');
figure(1);
w=-5*2*%pi:0.01:5*2*%pi;
plot(w,Hphs);
title('Phase Response');
ylabel('theta(w)');
xlabel('w in radians/second');
