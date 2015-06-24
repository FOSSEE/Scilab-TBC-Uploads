//Ex 6.9
clc;
clear;
close;
format('v',6);
disp("Part (a)");
L1=25;//micro H
L2=10;//micro H
Rf=22;//kohm
C=0.01;//micro F
LT=L1+L2;//micro H
fr=1/(2*%pi*sqrt(C*10^-6*LT*10^-6));//Hz
fr=fr/1000;//kHz
f0=fr;///kHz
disp(f0,"Oscillation frequency(kHz)");
Ri=Rf/(L1/L2);//kohm
disp(Ri,"Resistance Ri(kohm)");
disp("Part (b)");
C1=220;//pF
C2=680;//pF
Rf=22;//kohm
L=1;//mH
CT=C1*C2/(C1+C2);//pF
fr=1/(2*%pi*sqrt(L*10^-3*CT*10^-12));//Hz
fr=fr/1000;//kHz
f0=fr;///kHz
f0=round(f0);//kHz
disp(f0,"Oscillation frequency(kHz)");
Ri=Rf/(C1/C2);//kohm
disp(Ri,"Resistance Ri(kohm)");

