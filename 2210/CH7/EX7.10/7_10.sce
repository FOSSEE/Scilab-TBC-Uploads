//Chapter 7, Problem 10
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
s11=p2z(0.35,165)
s12=p2z(0.035,58)
s21=p2z(5.9,66)
s22=p2z(0.46,-31)
refs=p2z(0.68,142)                          //source reflection coefficient
f=300e6                                     //frequency in hertz
vce=12                                      //base to emitter voltage
ic=4e-3                                   //collector current in ampere
[s11m,s11a]=z2p(s11)
[s22m,s22a]=z2p(s22)
[s21m,s21a]=z2p(s21)
[s12m,s12a]=z2p(s12)

Ds=(s11*s22)-(s12*s21)
[Dmag,Dang]=z2p(Ds)
K=(1+Dmag^2-s11m^2-s22m^2)/(2*s21m*s12m)

y=1.65
r=0.85
y1=0.62
r1=1.2
R=50

//The design values of the input matching network are shown in Figures 7.10. By plotting, we get Arc AB = shunt C = j1.65 S and Arc BC = series L = j0.85 ohm
C1=y/(2*%pi*f*R)
L1=(r*R)/(2*%pi*f)

refl=conj(s11+((s12*s21*refs)/(1-(s22*refs))))

//The design values of the input matching network are shown in Figures 7.12. By plotting, we get Arc AB = shunt L = –j0.72 S and Arc BC = series C = –j1.07 ohm

C2=1/(2*%pi*f*r1*R)
L2=R/(2*%pi*f*y1)

printf("For input matching network,\n\n")
printf("C1 = %.2f pF\n",C1*10^12)
printf("L1 = %.2f nH\n\n",L1*10^9)
printf("For output matching network,\n\n")
printf("C2 = %.2f pF\n",C2*10^12)
printf("L2 = %.2f nH\n\n",L2*10^9)
printf("The completed design is shown in Figure 7.12")
