//Example 9 //foce constant,displacement , acceleration and energy
clc;
clear;
close;
//given data :
x1=.10;// in m
F1=4;// in N
K=F1/x1;
x2=0.12;// in m
disp(K,"(a). The force constant,K(N/m) = ")
F=-K*x2;
disp(F,"(b). The force,F(N) = ")
m=1.6;// in kg
T=2*%pi*sqrt(m/K);
disp(T,"(c). Period of pscillation,T(s) = ")
A=x2;
disp(A,"(d). Amplitude of motion,A(m) = ")
alfa=A*K/m;
disp(alfa,"(e). Maximum acceleration,alfa(m/s^2) = ")
x=A/2;// in m
w=sqrt(K/m);
v=w*sqrt(A^2-x^2);
a=w^2*x;// in m/s^2
KE=(1/2)*m*v^2;// in J
PE=(1/2)*K*x^2;// in J
TE=KE+PE;
disp(v,"(f) velocity is,(m/s) ")
disp(a,"(f). acceleration,(m/s^2) = ")
disp(KE,"(f) Kinetic energy is ,(J)=")
disp(PE,"(f) Potential energy is ,(J)=")
disp(TE,"(g). Total energy of the oscillating system,TE(J) = ")
// in textbook part f is inculded in the part e so their is the numbeing error in parts

