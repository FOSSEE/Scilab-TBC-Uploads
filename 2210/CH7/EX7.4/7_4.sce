//Chapter 7, Problem 4
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
s11=p2z(0.3,140)
s12=p2z(0.03,65)
s21=p2z(2.1,62)
s22=p2z(0.40,-38)
refs=p2z(0.463,-140)
refl=p2z(0.486,38)
[s11m,s11a]=z2p(s11)
[s22m,s22a]=z2p(s22)
[s21m,s21a]=z2p(s21)
[s12m,s12a]=z2p(s12)
[refsm,refsa]=z2p(refs)
[reflm,refla]=z2p(refl)

//calculation
a=(s21m^2)*(1-refsm^2)*(1-reflm^2)
b=((1-(s11*refs))*(1-(s22*refl))-(s12*s21*refl*refs))^2
Gt=a/real(b)
Gtl=10*log10(Gt)
printf("Amplifier transducer gain = %.2f dB ",Gtl)
