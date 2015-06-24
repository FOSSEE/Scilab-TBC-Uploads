// calcuating the passband gain and upper & lower cut off frequencies
clc;
R1=10*10^3;
R2=1*10^6;
A=R2/(R1+R2);
disp(A,'gain=')
C2=(0.01)*10^-6;
C1=100*10^-12;
fcl=1/(2*%pi*C2*R2);
disp(fcl,'lower cut off frequency (Hz)')
fcu=1/(2*%pi*R1*C1);
disp(fcu,'upper cut off frequency (Hz)')