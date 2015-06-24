clear;
clc;

Vr=220
Vs=240

A=complex(.9*cosd(1), .9*sind(1));
B=complex(140*cosd(84), 140*sind(84));

b=atan(imag(B)/real(B));
d=b
vs=complex (Vs *cos(d), Vs *sin(d));
P= (((Vs *Vr)/abs(B))*cos(b-d))- real(((Vr)^2 * conj(A/B)));
mprintf("(a) Max Power Transmitted =  %.2f MW", P);

Pr=80;
Sr=100;
Qr=sqrt(Sr^2 - Pr^2);
bd1=round(acos(( Pr+real(((Vr)^2 * conj(A/B))) ) * (abs(B)/(Vs *Vr)))*1000)/1000;
Qr1= (((Vs *Vr)/abs(B))*sin(bd1))-imag(((Vr)^2 * conj(A/B)));

Q=+Qr-Qr1;
mprintf("\n\n\n(b)\nCapacity of static capacitor= %.2f MVar leading", Q)
disp("There is a calculation error in the textbook. 40-49.37=10.63")

d1=b-bd1;
d1=d1*180/%pi
mprintf("\n\n\n(c)\nLoad Angle factor= %.2f deg", d1)

