l=1*10^-6; //length
w=200*10^-6; //width
d=0.5*10^-6; //depth
E0=8.854*10^-12; 
Er=13.1;
q=1.6*10^-19; //electron charge
Nd=1*10^16; //doping concentration
mun=8500;
Vp=(q*Nd*d^2)/(2*Er*E0);
G0=(q*mun*Nd*w)/l;
gm=0.0358;
Cap=(E0*Er*w*l)/d;
fT=gm/(2*%pi*Cap);
disp("Hertz",fT,"Cut off frequency");