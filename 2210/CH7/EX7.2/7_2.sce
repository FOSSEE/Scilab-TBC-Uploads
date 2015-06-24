//Chapter 7, Problem 2
clc
funcprot(0)
// A = p2z(R,Theta) - Convert from polar to rectangular form.
//    R is a matrix containing the magnitudes
//    Theta is a matrix containing the phase angles (in degrees).
function [A] = p2z(R,Theta)
 A = R*exp(%i*%pi*Theta/180);
endfunction

// [R, Theta] = z2p(A) - Display polar form of complex matrix.
function [R, Theta] = z2p(A)
     Theta = atan(imag(A),real(A))*180/%pi;
     R=sqrt(real(A)^2+imag(A)^2)
endfunction

//transistor s-parameter
s11=p2z(0.3,160)
s12=p2z(0.03,62)
s21=p2z(6.1,65)
s22=p2z(0.40,-38)
R=50                            //resistance in ohms
f=150e6                         //frequency in hertz
vce=12                          //base to emitter voltage
ic=8e-3                         //collector current

Ds=(s11*s22)-(s12*s21)
[Dmag,Dang]=z2p(Ds)
[s11m,s11a]=z2p(s11)
[s22m,s22a]=z2p(s22)
[s21m,s21a]=z2p(s21)
[s12m,s12a]=z2p(s12)
K=(1+Dmag^2-s11m^2-s22m^2)/(2*s21m*s12m)
B1=1+s11m^2-s22m^2-Dmag^2
MAG=10*log10(s21m/s12m)+10*log10(K-sqrt(K^2-1))
C2=s22-(Ds*conj(s11))
[C2m,C2a]=z2p(C2)
B2=1+s22m^2-s11m^2-Dmag^2
reflm=(B2-sqrt(B2^2-4*C2m^2))/(2*C2m)
refla=-C2a
refl=p2z(reflm,refla)
refs=conj(s11+((s12*s21*refl)/(1-(s22*refl))))
[refsm,refsa]=z2p(refs)

a=s21m^2*(1-refsm^2)*(1-reflm^2)
b=((1-s11*refs)*(1-s22*refl))-(s12*s21*refl*refs)
[bm,ba]=z2p(b)
Gt=a/bm^2
Gt_db=10*log10(Gt)
printf("Transducer gain = %.2f dB",Gt_db)
