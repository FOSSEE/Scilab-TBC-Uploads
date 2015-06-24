// Example 2.69:parallel impedence
clc;
clear;
fr=445*10^3;//resonant frequency in hertz
BW=10*10^3;// hertz
Xl=1255;// inductive reactance in ohm
Qr=fr/BW;
R=Xl/Qr;
L=Xl/(2*%pi*fr);
C=1/(2*%pi*fr*Xl);
Zp=(L/(C*R))*10^-3;
disp(Qr,"value of quality factor is")
disp(R,"resisitance = (ohm)")
disp(L,"inductance = (H)")
disp(C,"capacitor= = (F)")
disp(Zp,"parallel impedence = (killo ohm)")
