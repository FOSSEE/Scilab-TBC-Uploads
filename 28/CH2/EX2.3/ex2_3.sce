s=%s;
syms L C R1 R2
// forward path denoted by P! and loop by L1,L2 and so on
// path factor by D1 and graph determinant by D
P1=1/(s*L*s*C);
L1=-R1/(s*L);
L2=-1/(s*R2*C);
L3=-1/(s^2*L*C);
D1=1;
D=1-(L1+L2+L3);
Y=(P1*D1)/D;
disp(Y,"Transfer function=")
