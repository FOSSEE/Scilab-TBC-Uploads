clear;
clc;

A1=complex(.98 * cosd(2), .98* sind(2));
B1=complex(28 * cosd(69), 28* sind(69));
C1=complex(.0002 * cosd(80), .0002* sind(80));
D1=A1;

A2=complex(.95 * cosd(3), .95* sind(3));
B2=complex(40 * cosd(85), 40* sind(85));
C2=complex(.0004 * cosd(90), .0004* sind(90));
D2=A2;

//(a)

A= (A1* A2) + (B1* C2);
B= (A1* B2) + (B1* D2);
C= (C1* A2) + (D1* C2);
D= (C1* B2) + (D1* D2);


mprintf("(a)");
mprintf("\nA= %s", string(round(abs(A)*1000)/1000) +'/_'+ string(round(atand(imag(A)/real(A))*10)/10) )
mprintf("\nB= %s", string(round(abs(B)*100)/100) +'/_'+ string(round(atand(imag(B)/real(B))*100)/100) )
mprintf("\nC= %s *1e-4", string(round(abs(C)*100000)/10) +'/_'+ string(round(atand(imag(C)/real(C))*10)/10 ) )
mprintf("\nD= %s", string(round(abs(D)*1000)/1000) +'/_'+ string(round(atand(imag(D)/real(D))*10)/10) )


//(b)

Vr=110e3/sqrt(3);
pf=.95;
Irm=200
pfa=-1* acos(pf);
Ir=complex(Irm *pf, Irm * sin(pfa));

Vs=(A*Vr)+(B*Ir);
V=abs(Vs)
vs=V*sqrt(3)*1e-3;
mprintf("\n\n\n(b)\nSending End Voltage= %.2f kV", vs)

Is=(C*Vr)+(D*Ir);
I=abs(Is)
mprintf("\nSending End Current= %.1f A", I)

phi1=atan(imag(Vs)/real(Vs))*(180/%pi);
phi2=atan(imag(Is)/real(Is))*(180/%pi);
phi=phi1-phi2;
pfs=cosd(phi);
mprintf("\nSending End pf= %.2f ",pfs)
