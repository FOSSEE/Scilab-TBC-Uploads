clear;
clc;
R=65;L=1.6*(10^-3);C=.1*(10^-6);G=2.25*(10^-6);f=800;
w=5000;
Z=R+round(%i*w*L);
Y=G+%i*w*C;
Zo=sqrt(Z/Y);
printf('-Characteristic impedance is Zo = %f /_%f ohms\n',(abs(Zo)),(((atan(imag(Zo),real(Zo))*180/%pi))));
