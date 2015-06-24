//Chapter 7, Problem 9
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

//transistor S parameter
s11=p2z(0.4,280)
s12=p2z(0.048,65)
s21=p2z(5.4,103)
s22=p2z(0.78,345)
rs=p2z(0.678,79.4)                          //source reflection coefficient
rl=p2z(0.89,70)                              //load reflection coefficient

Rs=conj(s11+((s12*s21*rl)/(1-(s22*rl))))
[Rsm,Rsa]=z2p(Rs)
printf("Source reflection coefficient, magnitude = %.3f \n\t\t\t\t angle = %.1f degree",Rsm,Rsa)
