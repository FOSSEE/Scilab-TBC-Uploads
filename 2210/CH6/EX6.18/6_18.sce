//Chapter 6, Problem 18
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


//transistor Y parameter
yi=(17.37+%i*11.28)*10^-3                  //in complex form
yr_mag=1.17e-3
yf_mag=130.50e-3
yr=p2z(1.17e-3,-91)
yf=p2z(130.50e-3,-69)
yo=(0.95+%i*3.11)*10^-3                   //in complex form
f=300e6                                   //frequency in hertz
Vce=5                                     //base to emitter voltage
Ic=2e-3                                   //collector current
gi=17.37e-3                              //input conductance
go=0.95e-3                               //output conductance

//to calculate conjugate input admittance
m=sqrt(((2*gi*go)-real(yf*yr))^2-(yf_mag*yr_mag)^2)
n=2*go
Gs=m/n
Bs=-imag(yi)+(imag(yf*yr)/(2*go))
Gsi=Gs+%i*Bs

//to calculate conjugate output admittance
Gl=Gs*go/gi
Bl=-imag(yo)+(imag(yf*yr)/(2*gi))
Gsl=Gl+%i*Bl


num=4*Gs*Gl*(yf_mag)^2
den=((yi+Gsi)*(yo+Gsl))-(yf*yr)
[denm,dena]=z2p(den)
Gt=num/denm^2
Gt_db=10*log10(Gt)
printf("Transducer gain = %.2f dB",Gt_db)
