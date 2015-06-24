//Ex 3.10
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
disp("As Q<12 ; it is wide band filter");
disp(fL,"Design values for high pass section with Ap1=2 & fL(Hz) :");
Ap1=2;//band pass gain for high pass section
C=0.033;//micro F(have to choose C, 0.01<C<1)
R=1/(2*%pi*fL*C*10^-6)/1000;//kohm
RfBYRi=(Ap-1);//op-amp gain
Rf=2*R;//kohm
Ri=2*R;//kohm
disp(C,"Capacitance(micro F)");
disp(R,"Resistance R(kohm)");
disp(Rf,"Resistance Rf(kohm)");
disp(Ri,"Resistance Ri(kohm)");
disp(fH,"Design values for low pass section with Ap2=2 & fH(Hz) :");
Ap2=2;//band pass gain for low pass section
C=0.033;//micro F(have to choose C, 0.01<C<1)
k=fL/fH;//scaling factor
Rdash=0.2*R;//kohm
Ri=2*Rdash;//kohm
Rf=Ri;//kohm(for Ap2=2)
disp(C,"Capacitance(micro F)");
disp(Rdash,"Resistance Rdash(kohm)");
disp(Rf,"Resistance Rf(kohm)");
disp(Ri,"Resistance Ri(kohm)");
disp("For design purpose use rounded value 10 kohm for Rf & Ri");
