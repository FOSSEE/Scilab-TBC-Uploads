//Chapter 6, Problem 17
clc
// A = p2z(R,Theta) - Convert from polar to rectangular form.
//    R is a matrix containing the magnitudes
//    Theta is a matrix containing the phase angles (in degrees).
function [A] = p2z(R,Theta)
 A = R*exp(%i*%pi*Theta/180);
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

//to calculate linvill stability factor
a=yf_mag*yr_mag
b=(2*gi*go)-real(yf*yr)
c=a/b

//to calculate maximum available gain
MAG=yf_mag^2/(4*gi*go)
MAG_db=10*log10(MAG)

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

//to calculate Stern stability factor
u=2*(gi+Gs)*(go+Gl)
v=(yf_mag*yr_mag)+real(yf*yr)
K=u/v

printf("(1) Linvill stability factor C = %.2f\n\n",c)
printf("(2) Maximum available gain (MAG) = %.2f dB\n\n",MAG_db)
printf("(3) Conjugate input admittance \n\treal = %.2f mS \n\timaginary = %.2f mS\n\n",real(Gsi)*1000,imag(Gsi)*1000)
printf("(4) Conjugate output admittance \n\treal = %.2f mS \n\timaginary = %.2f mS\n\n",real(Gsl)*1000,imag(Gsl)*1000)
printf("(5) Stern stability factor K = %.2f",K)





