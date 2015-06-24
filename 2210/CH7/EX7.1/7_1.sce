//Chapter 7, Problem 1
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

//since we get  source and load reflection coefficient. we plot this source reflection coefficient on smith chart for getting input matching network in figure 7.1. By plotting, we get Arc AB = shunt C = j1.33 S and Arc BC = series L = j0.34 ohm.
y=1.33
r=0.34
C1=y/(2*%pi*f*R)
L1=r*R/(2*%pi*f)

//we plot this load reflection coefficient on smith chart for getting input matching network in figure 7.2. By plotting, Arc AB = series C = –j1.1 ohm and Arc BC = shunt L = –j0.8 S.
y1=0.8
r1=1.1
C2=1/(2*%pi*f*R*r1)
L2=R/(2*%pi*f*y1)

printf("For input matching network,\n\n")
printf("C1 = %.2f pF\n",C1*10^12)
printf("L1 = %.2f nH\n\n",L1*10^9)
printf("For output matching network,\n\n")
printf("C2 = %.2f pF\n",C2*10^12)
printf("L2 = %.2f nH\n\n",L2*10^9)
printf("The completed design (minus biasing network) is shown in Figure 7.3")







