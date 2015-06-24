//Chapter 7, Problem 8
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
s11=p2z(0.4,280)
s12=p2z(0.048,65)
s21=p2z(5.4,103)
s22=p2z(0.78,345)
ro=p2z(0.287,24)                         //centre of gain circle
po=0.724                                //radius of 12dB constant gain circle
f=200e6                                 //frequency in hertz
vce=6                                   //base to emitter voltage
ic=5e-3                                    //collector current
A=15.85                                     //gain desired   
K=0.802                                     //Rollett's stability factor
C2=p2z(0.651,24.1)

[s11m,s11a]=z2p(s11)
[s22m,s22a]=z2p(s22)
[s21m,s21a]=z2p(s21)
[s12m,s12a]=z2p(s12)
Ds=(s11*s22)-(s12*s21)
[Dmag,Dang]=z2p(Ds)
G=A/s21m^2
D2=s22m^2-Dmag^2
ro=C2*G/(1+(D2*G))
[rom,roa]=z2p(ro)
po1=sqrt(1-(2*K*G*abs(s12m*s21m))+((abs(s12m*s21m))^2*G^2))/(1+(D2*G))

printf("ro (magnitude) = %.3f\n\t (angle) = %.3f degree\n\n",rom,roa)
printf("po = %.3f \n\n",po1)
disp("There the values are correct")
