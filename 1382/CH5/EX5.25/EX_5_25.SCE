// Example 5.24:PERCENTAGE TILT
clc;
clear;
close;
Rc=4;//RESISTANCE IN KILLO OHMS
Rl=2;//RESISTANCE IN KILLO OHMS
R1=Rc+Rl;//
C=10;//capacitance in micro farad
fl=(1/(2*%pi*R1*10^3*C*10^-6));//LOWER CUT -OFF FREQUENCY
f=200;//frequency in hertz
P= (%pi*fl)/f;//
disp(P*100,"percentage tilt is")
