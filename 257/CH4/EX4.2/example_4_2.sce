syms s t V q L C R L1 L2 X1 X2 q1 R1 R2 q2 X

//F-V anolagy
F=V;
x=q;
M=L;
K=1/C;
B=R;

V=L1*q1*s^2 + R1*s*q1 + R2*s*(X1-X2)
//0=L2*s^2*q2 + (1/C)*q2 + R2*s*(q2-q1)
//REPLACING I/s=Q 
disp("V=L1*s*I1 + R1*I1 + R2*(I1-I2)")           //LOOP 1
disp("0=L2*s*I2 + 1/(s*C) + R2*(I2-I1)")           //LOOP 2

//F-I ANOLOGY

phi=X;
F=I;

I=phi*(C*s^2 + 1/(R*s) + 1/L)
//REPLACING phi=V/s
I=V*(s*C + 1/R + 1/(s*L))
disp("i(t)=c*diff(v) + v/R + 1/L*int(v)")      //taking laplace inverse
