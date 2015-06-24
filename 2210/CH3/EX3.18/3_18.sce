//Chapter 3, Prblem 18,
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


//transistor S-parameter
s11=p2z(0.12,-10)
s12=p2z(0.002,-78)
s21=p2z(9.8,160)
s22=p2z(0.01,-15)

[s11m,s11a]=z2p(s11)
[s22m,s22a]=z2p(s22)
[s21m,s21a]=z2p(s21)
[s12m,s12a]=z2p(s12)

vswr=(1+s11m)/(1-s11m)
ret_loss=-20*log10(s11m)
Fig=20*log10(s21m)
Rig=20*log10(s12m)

printf("(a) Input VSWR = %.2f\n\n",vswr)
printf("(b) Return loss (dB) = %.2f dB\n\n",ret_loss)
printf("(c) Forward insertion gain = %.2f dB\n\n",Fig)
printf("(d) Reverse insertion gain = %.2f dB\n\n",Rig)
