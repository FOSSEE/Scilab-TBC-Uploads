//To determine the ABCD parameters of Line
clear
clc;
yl=(0.2714+ %i*1.169)*120*(10^-3);
Ir=40*1000/(sqrt(3)*132*.8)
A=cosh(yl);
phase_A=atand(imag(A)/real(A));//Phase angle of A
IR=Ir*(cosd(-36.8)+ %i*sind(-36.8))
Vr=132*1000/sqrt(3);
Zc=380*(cosd(-13.06)+ %i*sind(-13.06));
B=Zc*sinh(yl);
phase_B=atand(imag(B)/real(B));//Phase angle of B
Vs=(A*Vr+B*IR);
f=abs(B);
d=abs(Vs);
C=sinh(yl)/Zc;
phase_C=atand(imag(C)/real(C));//Phase angle of C
D=cosh(yl);
phase_D=atand(imag(D)/real(D));//Phase angle of D
mprintf("A=%.2f at an angle of %.2f \n",abs(A),phase_A)
mprintf("B=%.1f at an angle of %.0f \n",abs(B),phase_B)
mprintf("C=%.2f at an angle of %.2f \n",abs(C),phase_C)
mprintf("D=%.2f at an angle of %.2f \n",abs(D),phase_D)
