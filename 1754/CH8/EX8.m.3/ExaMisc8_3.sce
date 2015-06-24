//Exa Misc 8.3
clc;
clear;
close;
//given data
format('v',5);
R=100;//in kohm
fo=10;//in KHz
C=1/(2*%pi*fo*10^3*R*10^3);//in F
disp(C*10^12,"Value of Capacitor(in pF) :");
