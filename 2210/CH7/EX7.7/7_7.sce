//Chapter 7, Problem 7
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
f=200e6                                 //frequency in hertz
vce=6                                   //collector to emitter voltage
ic=5e-3                                 //collector current in ampere

[s11m,s11a]=z2p(s11)
[s22m,s22a]=z2p(s22)
[s21m,s21a]=z2p(s21)
[s12m,s12a]=z2p(s12)

Ds=(s11*s22)-(s12*s21)
[Dmag,Dang]=z2p(Ds)
K=(1+Dmag^2-s11m^2-s22m^2)/(2*s21m*s12m)
C1=s11-(Ds*conj(s22))
[C1m,C1a]=z2p(C1)
C2=s22-(Ds*conj(s11))
[C2m,C2a]=z2p(C2)
rs1=conj(C1)/(s11m^2-Dmag^2)
[rs1m,rs1a]=z2p(rs1)
ps1=s12*s21/(s11m^2-Dmag^2)
[ps1m,ps1a]=z2p(ps1)

rs2=conj(C2)/(s22m^2-Dmag^2)
[rs2m,rs2a]=z2p(rs2)
ps2=s12*s21/(s22m^2-Dmag^2)
[ps2m,ps2a]=z2p(ps2)

printf("Centre of input stability circle (magnitude) = %.3f \n\t\t\t\t(angle) = %.2f degree\n",rs1m,rs1a)
printf("Radius of input  stability circle = %.2f \n\n",ps1m)
printf("Centre of output stability circle (magnitude) = %.3f \n\t\t\t\t(angle) = %.2f degree\n",rs2m,rs2a)
printf("Radius of output  stability circle = %.2f \n\n",ps2m)
printf("Using these points, plotting a circle on smith chart as shown on Fig 7.9,\n,with the help of these we will get\n")
printf("load reflection coefficient = 0.89 (magnitude) , 70 (degree)\n Source reflection coefficient = 0.678 (magnitude), 79.4 (degree)")
