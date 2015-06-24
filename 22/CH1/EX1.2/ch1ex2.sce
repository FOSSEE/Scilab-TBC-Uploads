//signals and systems
//power and rms value of a signal
clear
close
clc
//part a is a periodic function with period 2*pi/w0

disp("consider the power for almost infinite range");
disp('part (a)')
disp("integrating ((c*cos(w0*t +theta))^2) for this big range gives c^2/2 as the power which is irrespective of w0");
disp("rms value is the square root of power and therefpre equal to sqrt(c^2/2)\n\n");
//part b is the sum of 2 sinusoids
disp('part (b)')
disp("again integrating in the same way and ignoring the zero terms we get (c1^2+c2^2)/2");
//part c deals with a complex signal
disp('part (c)')
disp("integrating the expression we get |D|^2 as the power and |D| as the rms value");
