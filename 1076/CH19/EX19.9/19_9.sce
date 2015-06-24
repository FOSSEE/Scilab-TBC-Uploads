clear;
clc;

Z=complex(180*cosd(75) , 180*sind(75));
Y=complex(1e-3*cosd(90) , 1e-3*sind(90));
YZ=Z*Y;


B=Z;
A=1+(YZ/2)
D=A
C= Y* (1+(YZ/4))

mprintf("\n(a)");
mprintf("\nA =D= %.3f ang (%.2f) deg",abs(A), round(atand(imag(A)/real(A))*100)/100)
mprintf("\nB = %.0f ang (%.0f) deg ohm",abs(B), round(atand(imag(B)/real(B))*100)/100)
mprintf("\nC = %.6f ang (%.1f) deg ohm",abs(C), round(atand(imag(C)/real(C))*100)/100 +180)


B2=B-(0.6 * imag(Z) *%i);
YZ2=B2*Y;
A2=1+(YZ2/2)
D2=A2
C2= Y* (1+(YZ2/4))


mprintf("\n(b)");

mprintf("\nA =D= %.3f ang (%.2f) deg",fix(abs(A2)*1000)/1000, round(atand(imag(A2)/real(A2))*100)/100)
mprintf("\nB = %.2f ang (%.2f) deg ohm",abs(B2), round(atand(imag(B2)/real(B2))*100)/100)
mprintf("\nC = %.6f ang (%.1f) deg ohm",abs(C2), round(atand(imag(C2)/real(C2))*100)/100 +180)
