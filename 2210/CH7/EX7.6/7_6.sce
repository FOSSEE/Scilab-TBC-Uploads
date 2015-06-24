//Chapter 7, Problem 6
clc
funcprot(0)
// A = p2z(R,Theta) - Convert from polar to rectangular form.
//    R is a matrix containing the magnitudes
//    Theta is a matrix containing the phase angles (in degrees).
function [A] = p2z(R,Theta)
 A = R*exp(%i*%pi*Theta/180);
endfunction

// [R1, Theta1] = z2p(A1) - Display polar form of complex matrix.
function [R1, Theta1] = z2p(A1)
     Theta1 = atan(imag(A1),real(A1))*180/%pi;
     R1=sqrt(real(A1)^2+imag(A1)^2)
endfunction

//transistor s-parameter
s11=p2z(0.28,-58)
s12=p2z(0.08,92)
s21=p2z(2.1,65)
s22=p2z(0.8,-30)
Ds=p2z(0.333,-60.66)
C2=p2z(0.719,-33.42)
D2=0.529                                //angle in degree
K=1.168                                 //Rollett stability factor
A=6.31                                  //desired gain
[s11m,s11a]=z2p(s11)
[s22m,s22a]=z2p(s22)
[s21m,s21a]=z2p(s21)
[s12m,s12a]=z2p(s12)

//calculating the radius of constant gain circle of 9 dB 
G=A/s21m^2
ro=conj(G*C2)/(1+(D2*G))
[rom,roa]=z2p(ro)
po=sqrt(1-(2*K*G*s12m*s21m)+((s12m*s21m)^2*G^2))/(1+(D2*G))

printf("Constant gain circle of 8 dB = %.3f ",po)
