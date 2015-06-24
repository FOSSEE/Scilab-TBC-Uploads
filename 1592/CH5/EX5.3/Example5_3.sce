//Scilab Code for Example 5.3 of Signals and systems by
//P.Ramakrishna Rao
clear;
clc;
//Inverse Fourier Transform
w=-20:20;
X=4*(cos(w))^2;
a = gca();
a.y_location ="origin";
a.x_location ="origin";
plot(w,X);
title("X(e^jw)");
xlabel("Frequency in Radians/sec");
figure(1);
n=-50:50;
x=2*sinc(n)+sinc(n+2)+sinc(n-2);
a = gca ();
a.y_location ="origin";
a.x_location ="origin";
plot2d3(n,x);
title("x(n)");
xlabel("Time in sec");
