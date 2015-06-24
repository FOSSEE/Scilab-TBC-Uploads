//Scilab Code for Example 8.3 of Signals and systems by
//P.Ramakrishna Rao
clear;
clc;
syms n w;
h=(0.3)^n;
disp(h,'The impulse response of the system is:');
H=1/(1-(0.3*exp(-%i*w)));
disp(H,'The Transfer function of the system is:');
n=1;
for w=-%pi:0.1:%pi
    Hmag(n)=1/sqrt(1.09-(0.6*cos(w)));
    Hphs(n)=-atan(0.3*sin(w)/(1-0.3*cos(w)));
    n=n+1;
end
w=-%pi:0.1:%pi;
c = gca();
c.y_location = "origin";
c.x_location = "origin";
c.thickness=2;
plot(w,Hmag);
title('Magnitude Sketch');
ylabel('Amplitude');
xlabel('W in radians');
figure(1);
w=-%pi:0.1:%pi;
c = gca();
c.y_location = "origin";
c.x_location = "origin";
c.thickness=2;
plot(w,Hphs);
title('Phase Response');
ylabel('theta(w)');
xlabel('W in radians')
