
clc;
f=50*10**3;
dutyc=0.60;
C=0.0022*10**-6;
T=1/f;
t1=dutyc*T;
t2=T-t1;
R2=(t2)/(0.7*C);
disp('Kohm',R2*10**-3,"R2=");
R1=(t1)/(0.7*C)-R2;
disp('Kohm',R1*10**-3,"R1=");
