//Chapter 7, Problem 5
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
s11=p2z(0.28,-58)
s12=p2z(0.08,92)
s21=p2z(2.1,65)
s22=p2z(0.8,-30)
f=1e9                               //frequency in hertz
vce=15                              //collector to emitter voltage
ic=5e-3                             //collector current in ampere
Zs=35-%i*60                         //source impedance in ohm
Zl=50-%i*50                         //load impedance in ohm
K=1.168                             //Rollett stability factor
g=7.94                              //desired gain
R=50                                //resistance in ohm

[s11m,s11a]=z2p(s11)
[s22m,s22a]=z2p(s22)
[s21m,s21a]=z2p(s21)
[s12m,s12a]=z2p(s12)

Ds=s11*s22-s12*s21
[Dsm,Dsa]=z2p(Ds)
D2=s22m^2-Dsm^2
C2=s22-(Ds*conj(s11))
G=g/s21m^2
ro=(G*conj(C2))/(1+(D2*G))
po=sqrt(1-(2*K*s12m*s21m*G)+(s12m*s21m)^2*G^2)/(1+(D2*G))

//The Smith chart construction is shown in Figure 7.5. The transistor’s output network must transform the actual load impedance into a value that falls on the constant gain 9 dB circle. By plotting, we get Arc AB = series C = –j2.0 ohm and Arc BC = shunt L = –j0.41 S
r=2
y=0.4
C1=1/(2*%pi*f*r*R)
L1=R/(2*%pi*f*y)

//For a conjugate match at the input to the transistor, the desired source reflection coefficient must be calculated as follows
refl=p2z(0.82,13)                                           //point C in figure 7.5
refs=conj(s11+((s12*s21*refl)/(1-(s22*refl))))
[refsm,refsa]=z2p(refs)

//The point is plotted as point D in Figure 7.6. The actual normalised source impedance is plotted at point A (0.7 – j1.2) ohm. The input network must transform the actual impedance at point A to the desired impedance at point D. we get Arc AB = shunt C2 = j0.63 S, Arc BC = series L2 = j1.08 ohm, Arc CD = shunt C3 = j2.15 S

y1=0.63
r1=1.08
y2=2.15

C2=y1/(2*%pi*f*R)
L2=r1*R/(2*%pi*f)
C3=y2/(2*%pi*f*R)

printf("For output matching network,\n\n")
printf("C1 = %.2f pF\n",C1*10^12)
printf("L1 = %.1f nH\n\n",L1*10^9)
printf("For input matching network,\n\n")
printf("C2 = %.1f pF\n",C2*10^12)
printf("L2 = %.1f nH\n\n",L2*10^9)
printf("C3 = %.1f pF\n",C3*10^12)
printf("The completed design (minus biasing network) is shown in Figure 7.7")
