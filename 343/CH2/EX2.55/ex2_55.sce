clc
Vr=200;           //Assiging values to parameters
P=15.3;
fr=10000;
BW=1000;
R=Vr^2/P;
Q=fr/BW;
L=Q*R/(2*%pi*fr);
C=1/(4*%pi*%pi*fr*fr*L);
disp("Ohms",R,"resistance");
disp("henry",L,"inductor");
disp("Farads",C,"Capacitor");