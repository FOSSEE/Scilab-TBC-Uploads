f=10^7:10^8:10^10;
w=2*%pi.*f;
N=3.5;       //number of turns
rad=0.05*0.0254;
len=0.05*0.0254;      //length of wire
a=(5*0.0254*10^-3)/2;
u0=4*%pi*10^-7;
sig_cu=64.516*10^6;
e0=8.854*10^-12;
l=(%pi*rad^2*u0*(N^2))/len;
c=(e0*4*%pi*rad*(N^2)*a)/len;
r=(2*rad*N)/(sig_cu*(a^2));
z=1 ./((1 ./(r+w*%i*l))+w*%i*c); //impedance
zideal=w*%i.*l;                  //impedance of an ideal inductor
plot2d("gll",f,abs(z));
plot2d(f,abs(zideal));
title("Frequency response of the impedance of an RFC");
xlabel('Frequency (f) in Hz');
ylabel('Absolute Impedance (|Z|)  in  ohms');