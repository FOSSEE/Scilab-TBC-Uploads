clc;
A=[0 3/2;-1/2 2];
B=[0.71;-0.71];
C=[0.71 -0.71];
D=[0];
Hz=ss2tf(syslin('d',A,B,C,D));
disp(Hz,"H(z)=");
disp(" it has only one pole at z=1/2 and it lies inside the unit circle         hence the system is BIBO stable")