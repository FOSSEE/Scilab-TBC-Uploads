
//Example 2.22//calculate the constants of arm CD
clc;
clear;
f=1;//frequency in kHz
C1=0.2;//in micro farad
R2=500;//in ohms
R3=300;//in ohms
C3=0.1;//in micro frads
Z1=0-%i*(1/(2*%pi*f*10^3*C1*10^-6));//
Z2=R2;//
Y3= ((1/R3)+(%i*2*%pi*f*10^3*C3*10^-6));//
Z4=(Z2)/(Z1*Y3);//
Rx= real(Z4);//
Lx=(imag(Z4))/(2*%pi*f);//
disp(Rx,"unknown resistance in ohms")
disp(round(Lx),"unknow capacitance in mH")
