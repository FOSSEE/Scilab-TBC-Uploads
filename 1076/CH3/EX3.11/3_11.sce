clear;
clc;

d=500;
z=complex(.105, .3768);
y=complex(0, 2.822e-6);
Z=z*d;
Y=y*d;
YZ=Y*Z;

A=1+(YZ/2)+((YZ)^2/24);
B=Z * (1+(YZ/6)+((YZ)^2/120));
C=Y * (1+(YZ/6)+((YZ)^2/120));
D=A;

A=round(abs(A)*10000)/10000 * exp(%i * round(atan(imag(A)/real(A))*100)/100)
B=round(abs(B)*1000)/1000   * exp(%i * round(atan(imag(B)/real(B))*100)/100)

//see(B)


Vr=220e3/sqrt(3); //incorrectly taken as 127021 in textbook.
Vr=round(Vr)
Pr=40e6;
pf=.9;
pfa=-1*acos(pf);
Irm=Pr/(3*Vr);
Ir=complex(Irm *pf, Irm * round(sin(pfa)*100)/100);

Vs=(A*Vr)+(B*Ir);
V=abs(Vs);
vs=sqrt(3)*V*1e-3;
phi1=atand(imag(Vs)/real(Vs));
mprintf("\nSending End Voltage = %.2f kV",vs);

Is=(C*Vr)+(D*Ir);
I=abs(Is);
phi2=atand(imag(Is)/real(Is))
mprintf("\nSending End Current = %.2f A",I);

phi=phi2-phi1;
pfs=cosd(phi);
mprintf("\nSending End Power factor = %.3f  ",pfs);
mprintf("\nSending End Power Angle = %.3f  ",phi1);

MVA=sqrt(3) * vs* I /1000;
mprintf("\nSending End Power = %.3f  ",MVA);

disp("difference in results is due to taking Vr= 127021V instead of 127017V")
