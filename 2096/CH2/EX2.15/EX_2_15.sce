
//Example 2.15//calculate the constants of arm CD
clc;
clear;
f=1;//frequency in kHz
R1=225;//in ohms
R2=150;//in ohms
C2=0.53;//capacitance in micro farad
R3=100;//in ohms
L=7.95;//in mH
oC2=(2*%pi*f*10^3*C2*10^-6);//IN OHMS
wL= (2*%pi*f*10^3*L*10^-3);//in ohms
Z1=225;//in ohms
Z2= R2-(%i*(1/oC2));
Z3=R3+(%i*wL);//
Z4= (Z2*Z3)/(Z1);//unknow resistance in ohms
R4=real(Z4);//
C4=1/(2*%pi*f*10^3*imag(-Z4));//capacitance in farad
disp(R4,"resistance in arm CD in ohms")
disp(C4*10^6,"capacitance in micro farads")
