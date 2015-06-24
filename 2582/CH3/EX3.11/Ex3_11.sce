//Ex 3.11
clc;clear;close;
format('v',5);
fL=200;//Hz
fH=1*1000;//Hz
Ap=4;//band pass gain
BW=fH-fL;//Hz
f0=sqrt(fH*fL);//Hz
fc=sqrt(fH*fL);//Hz
Q=fc/BW;//Quality factor
disp(Q,"Quality factor");
disp("As Q<10 ; it is wide band filter");
disp(fH,"Design values for low pass section with Ap2=2 & fH(Hz) :");
Ap2=2;//band pass gain for low pass section
C=0.03;//micro F(have to choose C, 0.01<C<1)
Rdash=1/(2*%pi*fH*C*10^-6)/1000;//kohm
disp(C,"Capacitance(micro F)");
disp(Rdash,"Resistance Rdash(kohm)");
disp("Value of Resistance Rf & Ri can be choosen as 10 kohm for filter design.");
disp(fL,"Design values for high pass section with Ap1=2 & fL(Hz) :");
Ap1=2;//band pass gain for high pass section
C=0.05;//micro F(have to choose C, 0.01<C<1)
R=1/(2*%pi*fL*C*10^-6)/1000;//kohm
RfBYRi=(Ap-1);//op-amp gain
disp(C,"Capacitance(micro F)");
disp(R,"Resistance R(kohm)");
disp("Value of Resistance Rf & Ri can be choosen as 10 kohm for filter design.");
