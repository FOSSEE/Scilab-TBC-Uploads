clear;
clc;

Z=complex(200*cosd(80), 200*sind(80));
Y=complex(.0013*cosd(90),.0013*sind(90));
YZ=Y*Z;

A=1+(YZ/2)+((YZ)^2/24);
B=Z * (1+(YZ/6)+((YZ)^2/120));
phiA=atan(imag(A)/real(A))*(180/%pi);
phiB=atan(imag(B)/real(B))*(180/%pi);

P=60e6
pf=.8;
Vs=round(220/sqrt(3))*1e3;
VIrm=P/(3*pf)
pfa=acos(pf);
VIr=complex(VIrm *pf, VIrm * sin(pfa));

pfa=pfa*(180/%pi);
a=(round(abs(A)*1000)/1000)^2;
b=round(((2*(abs(A)* (VIrm)*cosd(phiA)*abs(B)*cosd(phiB-pfa)) )+ (2*(abs(A)* (VIrm)*sind(phiA)*abs(B)*sind(phiB-pfa))) - (Vs^2))/1e7)*1e7;
c=abs(B)^2 * (VIrm)^2;
Vr=sqrt((-b+sqrt((b*b)-(4*a*c)))/(2*a));

vr=sqrt(3) * Vr / 1000;
Ir=VIr/(Vr*pf);
mprintf("Receiveing End Line voltage= %.0f kV", fix(vr));
mprintf("\n Receiveing End Line Current= %.0f A", Ir);
