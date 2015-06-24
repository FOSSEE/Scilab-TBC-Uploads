// Example 2.66:resonant frequency ,impedence,Q-factor,Bnadwidth
clc;
clear;
V=10;//
L=150;//in micro henry
C=100;//in micro farad
R=5;//in ohms
fr=((1/(2*%pi*sqrt(L*10^-6*C*10^-12))))*10^-3;//resonant frequency in killo hertz
Zr=(L*10^-3)/(C*10^-9*R);//IN KILLO OHMS
Q=((2*%pi*fr*10^6*L*10^-6)/R)*10^-3;
BW=(fr/Q);//
disp(fr,"resonant frequency in killo hertz")
disp(Zr*10^-3,"Impedence in kilo ohms is")
disp(BW,"bandwidth in killo hertz is")
disp(Q,"Quality factor of coil is")



