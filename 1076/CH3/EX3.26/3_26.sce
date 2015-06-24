clear;
clc;

Vr1=132
Vs1=140
VA=40;
pf=.8;
Pr=VA*pf;
pfa=-1* acos(pf);
Qr=(VA * sin(pfa));

A=complex(.98*cosd(3), .98*sind(3));
B=complex(110*cosd(75), 110*sind(75));

bd1=acos(( Pr+real(((Vr1)^2 * conj(A/B))) ) * (abs(B)/(Vs1 *Vr1)));
Qr1= (((Vs1 *Vr1)/abs(B))*sin(bd1))-imag(((Vr1)^2 * conj(A/B)));

Q1=-Qr-Qr1;
mprintf("\n\n\n(a)\nCapacity of static capacitor= %.2f MVar leading", fix(Q1*100)/100)

Prn=0;
Qrn=0;

bd2=acos((Prn+real(((Vr1)^2 * conj(A/B))) ) * (abs(B)/(Vs1 *Vr1)));
Qr2= (((Vs1 *Vr1)/abs(B))*sin(bd2))-imag(((Vr1)^2 * conj(A/B)));

Q2=-Qrn-Qr2;
mprintf("\n\n\n(b)\nCapacity of static capacitor= %.1f MVar lagging", -Q2)
