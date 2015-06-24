//Chapter 6, Problem 15
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

//transistor parameter
yi=(4.8+%i*4.52)*10^-3              //in complex form
y0=(0.05+%i*2.26)*10^-3             //in complex form
gi=4.8e-3                            //input conductance
go=0.05e-3                          //output conductance
yr=p2z(0.90e-3,265)                    //in polar form to complex form
yf=p2z(61e-3,325)                     //in polar form to complex form

[yrm,yra]=z2p(yr)                       //in complex form to polar form
[yfm,yfa]=z2p(yf)                       //in complex form to polar form

Zs=50+%i*0
Zl=1000+%i*0
Ys=1/Zs
Yl=1/Zl
a=2*(gi+Ys)*(go+Yl)
b=(yfm*yrm)+real(yr*yf)
K=a/b
printf("Stern stability factor, K = %.2f ",K)
