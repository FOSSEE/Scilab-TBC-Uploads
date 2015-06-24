// Example 5.25:PERCENTAGE TILT
clc;
clear;
close;
Rc=2;//RESISTANCE IN KILLO OHMS
Rl=10;//RESISTANCE IN KILLO OHMS
R1=Rc+Rl;//
C=10;//capacitance in micro farad
fl=(1/(2*%pi*R1*10^3*C*10^-6));//LOWER CUT -OFF FREQUENCY
f=100;//frequency in hertz
P= (%pi*fl)/f;//
p1=0.02
f=(%pi*fl)/p1;//
disp(P*100,"percentage tilt is")
disp(f,"as the input frequency increases the percentage tilt decreases")
