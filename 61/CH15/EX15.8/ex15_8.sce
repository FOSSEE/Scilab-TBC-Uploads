//ex15.8
R4=12*10^3;
C1=0.22*10^-6;
R7=R4;
C2=C1;
R6=3.3*10^3;
Q=10;
f0=1/(2*%pi*R7*C2);
R5=(3*Q-1)*R6;
disp(f0,'center frequency in hertz')
disp(R5,'R5 in ohms')
disp('Nearest value is 100 kilo-ohms')