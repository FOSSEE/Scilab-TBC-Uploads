//8.13
clc;
R1=1000;
R2=100000;
Avf=(R1+R2)/R1;
printf("Closed loop gain=%.0f", Avf)
beta=R1/(R1+R2);
f_unity=1000000;
f2=f_unity*beta;
printf("\nUpper cut off frequency=%.0f Hz", f2)
disp('Critical frequencies')
C1=10^-6;
R3=150*10^3;
fc=1/(2*%pi*R3*C1);
printf("\nCritical frequency when R is 150 Kohm=%.3f Hz", fc)
R3=15*10^3;
fc=1/(2*%pi*R3*C1);
printf("\nCritical frequency when R is 15 Kohm=%.2f Hz", fc)
R3=1*10^3;
fc=1/(2*%pi*R3*C1);
printf("\nCritical frequency when R is 1 Kohm=%.2f Hz", fc)
disp('The lower cutt off frequency is the highest of the above three critical frequencies i.e.159.15 Hz')