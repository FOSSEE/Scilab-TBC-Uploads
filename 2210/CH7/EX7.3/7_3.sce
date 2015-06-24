//Chapter 7, Problem 3
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

f=5e9                                       //frequency in hertz
vce=15                                      //base to emitter voltage
ic=10e-3                                    //collector current in ampere

Ds=(s11*s22)-(s12*s21)
[Dmag,Dang]=z2p(Ds)
[s11m,s11a]=z2p(s11)
[s22m,s22a]=z2p(s22)
[s21m,s21a]=z2p(s21)
[s12m,s12a]=z2p(s12)
K=(1+Dmag^2-s11m^2-s22m^2)/(2*s21m*s12m)
B1=1+s11m^2-s22m^2-Dmag^2
MAG=10*log10(s21m/s12m)+10*log10(K-sqrt(K^2-1))

printf("Maximum available gain (MAG) = %.1f dB ",MAG)
