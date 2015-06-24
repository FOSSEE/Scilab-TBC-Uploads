//ex15.3
R_A=1*10^3;
R2=1*10^3;
R_B=R_A;
R=R_A;
C_A=0.022*10^-6;
C_B=C_A;
C=C_A;
f_c=1/(2*%pi*R*C);    //critical frequency
R1=0.586*R2;    //for butterworth response
disp(f_c,'critical frequency in hertz')
disp(R1,'value of R1 in ohms')