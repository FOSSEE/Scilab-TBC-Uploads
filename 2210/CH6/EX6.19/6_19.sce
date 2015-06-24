//Chapter 6, Problem 18
clc
// A = p2z(R,Theta) - Convert from polar to rectangular form.
//    R is a matrix containing the magnitudes
//    Theta is a matrix containing the phase angles (in degrees).
function [A] = p2z(R,Theta)
 A = R*exp(%i*%pi*Theta/180);
endfunction

//transistor parameter
yi=(2.25+%i*7.2)*10^-3
yr=p2z(0.70e-3,-85.9)
yf=p2z(44.72e-3,-26.6)
yo=(0.4+%i*1.9)*10^-3
yr_mag=0.70e-3
yf_mag=44.72e-3
Rs=250
Gs=1/Rs
K=3                                     //stern stability factor
gi=2.25e-3                            //input conductance
go=0.4e-3                            //output conductance
a=K*((yr_mag*yf_mag)+real(yf*yr))
b=2*(gi+Gs)
Gl=(a/b)-go

Bl=-imag(yo)
Yl=Gl+%i*Bl

yin=yi-((yr*yf)/(yo+Yl))

Bs=-imag(yin)
Ys=Gs+%i*Bs

num=4*Gs*Gl*(yf_mag)^2
den=real(((yi+Ys)*(yo+Yl))-(yf*yr))^2
Gt=num/den
Gt_db=10*log10(Gt)

printf("(a) Load admittance Yl \n\treal = %.2f mS \n\timaginary = %.2f mS\n\n",real(Yl)*1000,imag(Yl)*1000)
printf("(b) Source admittance Ys \n\treal = %.2f mS \n\timaginary = %.2f mS\n\n",real(Ys)*1000,imag(Ys)*1000)
printf("(c) Transducer gain = %.2f dB",Gt_db)
