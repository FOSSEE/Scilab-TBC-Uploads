clc
V=200;       //Assigning values to parameters
f=50;
Ra=10;
La=0.12;
Rb=20;
Cb=40*10^-6;
Xla=2*%pi*f*La;
Xcb=1/(2*%pi*f*Cb);
Za=Ra+%i*Xla;
Zb=Rb-%i*Xcb;
Zeq=(Za*Zb)/(Za+Zb);
[r,t]=polar(Zeq);
Ia=V/Za;
Ib=V/Zb;
pf=cos(t);
disp("Amperes",polar(Ia),"Branch current 1");
disp("Amperes",polar(Ib),"Branch current 2");
disp(real(pf),"power factor");