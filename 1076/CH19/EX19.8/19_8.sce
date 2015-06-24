clear;
clc;

Z=complex(180*cosd(75) , 180*sind(75));
Y=complex(1e-3*cosd(90) , 1e-3*sind(90));

g=sqrt(Y*Z);
Zc=sqrt(Z/Y);
Zc=round(abs(Zc)) * exp (%i * atan(imag(Zc)/real(Zc)))

Z1=Zc * sinh(g);
Y1=(1/Zc) *( (cosh(g)-1)/sinh(g));
A=cosh(g);
B=round(abs(sinh(g) )*1000) * exp (%i * atan(imag(sinh(g) )/real(sinh(g) ))) * Zc/1000
C=B / (Zc *Zc)
D=A;


mprintf("\n(a)");

mprintf("\nA =D= %.4f ang (%.2f) deg",abs(A), round(atand(imag(A)/real(A))*100)/100)
mprintf("\nB = %.2f ang (%.2f) deg ohm",abs(B), round(atand(imag(B)/real(B))*100)/100)
mprintf("\nC = %.5f ang (%.2f) deg ohm",abs(C), round(atand(imag(C)/real(C))*100)/100 +180)


B2=B-(0.6 * imag(Z) *%i);
Y2=(cosh(g)-1)/(sinh(g)*Zc);

A2=1+(B2*Y2)
D2=A2;
C2=(2* Y2 )+ (B2*Y2*Y2);
mprintf("\n(b)");

mprintf("\nA =D= %.4f ang (%.2f) deg",abs(A2), round(atand(imag(A2)/real(A2))*100)/100)
mprintf("\nB = %.0f ang (%.2f) deg ohm",abs(B2), round(atand(imag(B2)/real(B2))*100)/100)
mprintf("\nC = %.3f ang (%.1f) deg ohm",abs(C2), round(atand(imag(C2)/real(C2))*100)/100 +180)
