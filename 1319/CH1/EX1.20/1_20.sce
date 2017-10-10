// Determine the frequency of resonance and Max value of Rc at resonance

clc;
clear;

Rl=6;
L=1*(10^-3);
Rc=4;
C=20*(10^-6);

w0=(1/(sqrt(L*C)))*(sqrt(((Rl^2)-(L/C))/((Rc^2)-(L/C))));

Rcmax=sqrt(L/C);

printf(' The frequency of resonance = %g rad/sec\n',w0)
printf(' The Maximum value of Rc = %g ohms \n',Rcmax)
