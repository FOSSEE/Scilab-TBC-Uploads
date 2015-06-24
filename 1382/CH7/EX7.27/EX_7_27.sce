// Example 7.27:sustained oscillations and output frequency
clc;
clear;
close;
R4=5.1;//resistance in killo ohms
R3=12;//resistance in killo ohms
A= round(1+(R3/R4));//amplifier gain
R=R4;//resistance in killo ohms
C=1;//capacitance in nano farad
fo= (1/(2*%pi*C*10^-9*R*10^3))*10^-3;//FREQUENCY OF OSCILLATION IN KILLO HERTZ
disp(A,"amlifier gain is it is greater than 1 so circuit will oscillate")
disp(fo,"oscillation frequency in killo hertz")
