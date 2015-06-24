// Example 2.65:resonant frequency ,impedence,Q-factor,Bnadwidth,line current  and resonant frequency
clc;
clear;
V=10;//
L=1.2;//in micro henry
C=200;//in micro farad
R=8;//in ohms
fr=(1/(2*%pi))*(sqrt((1/(L*10^-3*C*10^-12))-(R^2/(L*10^-3)^2))*10^-3);//resonant frequency in killo hertz
Zr=(L*10^-3)/(C*10^-9*R);//IN KILLO OHMS
Q=((2*%pi*fr*10^6*L*10^-6)/R);
BW=fr/Q;//
Ir=(V/Zr)*10^3;//
fr1=((1/(2*%pi*sqrt(L*10^-3*C*10^-12))))*10^-3;//resonant frequency in mega hertz
disp(fr,"resonant frequency in killo hertz")
disp(Zr,"Impedence in kilo ohms is")
disp(BW,"bandwidth in killo hertz is")
disp(Ir,"line current in milli ampere")
disp(Q,"Quality factor of coil is")
disp(fr1,"resonant frequency in killo hertz neglecting resistance")


