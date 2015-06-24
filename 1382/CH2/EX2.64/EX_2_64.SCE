// Example 2.64:resonant frequency and voltage drop
clc;
clear;
L=100;//in micro henry
C=253.3;//in micro farad
R=15.7;//in ohms
fr=((1/(2*%pi*sqrt(L*10^-6*C*10^-12))))*10^-6;//resonant frequency in mega hertz
V=0.157;//
Ir=V/R;//
Vr=V;//
Vl=Ir*(2*%pi*fr*10^6*L*10^-6);//
Xc= (1/(2*%pi*fr*10^6*C*10^-12));//
Vc= Ir*Xc;//
Q=((2*%pi*fr*10^6*L*10^-6)/R);
disp(fr,"resonant frequency in mega hertz")
disp(Vr,"Voltage drop across ressitance")
disp(Vl,"Voltage drop across inductor")
disp(Vc,"Voltage drop across capacitor")
disp(Q,"Quality factor of coil is")
