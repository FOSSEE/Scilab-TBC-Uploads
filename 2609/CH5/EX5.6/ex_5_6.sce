//Ex 5.6
clc;
clear;
close;
format('v',8);
R3=1;//kohm
Rt=5;//kohm
Ri=1.8;R1=1.8;//kohm
Rf=18;R2=18;//kohm
Vs=15;//V
AoL=2*10^5;//Gain(for 741C)
Rio=2//Mohm
Ro=75//Mohm
fo=5;//Hz
fBW=1;//MHz
Ad=Rf/Ri*(1+2*R3/Rt);//differential gain
disp(Ad,"Differential gain");
Beta=(R3+Rt)/(2*R3+Rt);//unitless
Rix=Rio*10^6*(1+AoL*Beta);//ohm
disp(Rix,"Input impedence, Rix(ohm)");
Rof=Ro/(1+AoL/Ad);//ohm
disp(Rof,"Output impedence, Rof(ohm)");
//Answer in the book is wron for Rix.
