clear    
clc
disp('Exa-3.1');
w=0.250; theta=26.3;n=1 // n=1 for hydrogen atom and rest all are given values
d=n*w/(2*sind(theta));     // bragg's law
printf('Hence the atomic spacing is %.3f nm.',d);