
//Example 2.24//find unknow resistance and inductance
clc;
clear;
R1=600;//in ohms
f=1;//frequency in kHz
C1=1;//in micro farad
R2=100;//in ohms
R3=1000;//in ohms
Y1=((1/R1)+(%i*2*%pi*f*10^3*C1*10^-6));//
Z2=R2;//
Z3=R3;//
Z4=Z2*Z3*Y1;//
Rx= real(Z4);//
Lx=(imag(Z4))/(2*%pi*f);//
disp(round(Rx),"unknown resistance in ohms")
disp(Lx*10^-3,"unknow capacitance in Henry")
