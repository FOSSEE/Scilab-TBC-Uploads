//Scilab Code for Example 4.3 of Signals and systems by
//P.Ramakrishna Rao
//x(t)=A*cos w0*t*gate(t/T)
//T=1/2*fo
//fo=0.5 Hz
clear;
clc;
//Fourier Transform
A=1;
T=0.5;
fo=1/(2*T);
Wo=2*%pi*fo;
for f=-20:1:20;
X(f+21)=A*integrate('cos(Wo*t)*cos(2*%pi*f*t)','t',-0.25,0.25);
end
disp(X,'X(0)-->X(20)');
t=-0.25:0.01:0.25;
q=cos(Wo*t);
a = gca ();
a.y_location ="origin";
a.x_location ="origin";
plot(t,q);
xlabel ( 'Time in Seconds' );
title ('Signal x(t)');
figure(1);
a = gca ();
a.y_location ="origin";
a.x_location ="origin";
f=-20:1:20;
plot (f, X);
xlabel ( 'Frequency in Hz ' );
title ('Continuous Time Fourier Transform X(jW)');
