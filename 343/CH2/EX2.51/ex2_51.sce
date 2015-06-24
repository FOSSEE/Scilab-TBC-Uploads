clc
V=10/sqrt(2);         //Assigning values to parameters
Vc=500;
BW=400/(2*%pi);
R=100;
Q=Vc/V;
fr=BW*Q;
f1=fr-BW/2;
f2=fr+BW/2;
L=R/(2*%pi*BW);
fr=1/(2*%pi*sqrt(L*C));
C=1/(fr*fr*4*%pi*%pi*L);
disp("Hertz",fr,"Resonant frequency");
disp("Hertz",f1,"Lower frequency");
disp("Hertz",f2,"Upper frequency");
disp("Henry",L,"Inductor value");
disp("Farads",C,"Capacitor value");