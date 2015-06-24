//ex15.6
R1=68*10^3;
R2=180*10^3;
R3=2.7*10^3;
C=0.01*10^-6;
f0=(sqrt((R1+R3)/(R1*R2*R3)))/(2*%pi*C);
A0=R2/(2*R1);
Q=%pi*f0*C*R2;
BW=f0/Q;
disp(f0,'center frequency in hertz')
disp(A0,'maximum gain')
disp(BW,'bandwidth in hertz')