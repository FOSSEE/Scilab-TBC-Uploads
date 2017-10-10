clear;
clc;
v=400;
Xl=.30;
Xc=3.75*10^(-6);
l=300;
L=Xl/(2*%pi*50);
C=Xc/(2*%pi*50);
Zc=sqrt(L/C);
phase=2*%pi*50*sqrt(L*C);
pconstant=%i*phase;
Vs=v/sqrt(3);
Vr=Vs/(cos(phase*l));
betal=18.9076;
Xl=(Zc*sind(betal))/(1-cosd(betal));
Xr=(3*(Vs^2))/Xl;
mprintf("Reactance and rating of inductive shunt  reactor are %.4f ohm and %.4f MVAR\n",Xl,Xr);
//case b
l=800;
pf=.8;
del12=asind((l*pf*91.6532)/v^2);
Q12=((Vs^2/91.6532)*cosd(betal))-((Vs^2/91.6532)*cosd(del12));
Cr=complex(0,3*Q12)-complex(0,800*.6);
XC=v^2/Cr;
cc=10^6/(2*%pi*50*(imag(XC)));
mprintf("Rating and capacitance of capacitor are %.4f MVAR AND %.4f microF\n",imag(Cr),cc);
//case c
XX=Zc*sind(betal);
com=.5;
Xcs=com*XX;
Ir=l/(sqrt(3)*v*pf);
zz=complex(0,XX-Xcs);
yy=complex(0,(2/Zc*tand(betal/2)));
A=(1+(zz*yy/2));
B=zz;
Irr=Ir*complex(.8,-.6);
Vsss=(.9519*Vs)+(zz*Irr);
Vss=sqrt(3)*Vsss;
Reg=((abs(Vss)-v)/v)*100;
mprintf("Sending end voltage is %.4f+j%.4f kV\n",real(Vss),imag(Vss));
mprintf("regulation is %.4f percent",Reg);
disp(Irr)

