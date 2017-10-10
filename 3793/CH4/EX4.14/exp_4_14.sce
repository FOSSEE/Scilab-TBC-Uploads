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
//case a open ckt
Ir=0;
Vr=Vs/(cos(phase*l));


//terminated by surge impedence
VR=Vs/(exp(%i*phase*l));
//carries a load
ld=.6;
Vr1=Vs/(cos(phase*l)+((%i*sin(phase*l))/ld));
vv=abs(Vr1);
mprintf("Receiving end voltage when ckt is open %.4f kV\n ",Vr);
mprintf("Receiving end voltage when line is terminated by surge impedence is open %.4f%.4f kV\n ",real(VR),imag(VR));
mprintf("Receiving end voltage when load carries 60 percent load is open %.4f kV\n ",vv);
