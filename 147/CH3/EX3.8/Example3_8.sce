//Voltage V, Resistances R1 and R2, Capacitive reactance Xc
close();
clear;
clc;
R1 = 10;//ohm
R2 = 20;
Xc = -11.55*%i;
V = 173.2;//V
//By Nodal analysis
V1 = V/(R1*((1/R1)+(1/R2)+(1/Xc)));
V1r = polar(V1);
V1arg = atan(imag(V1),real(V1))*180/%pi;
V2 = V-V1;
V2r = polar(V2);
V2arg = atan(imag(V2),real(V2))*180/%pi;
I = V2/R1;
Ir = polar(I);
Iarg =atan(imag(I),real(I))*180/%pi;
I1 = V1/R2;
I1r = polar(I1);
I1arg =atan(imag(I1),real(I1))*180/%pi;
I2 = V1/Xc;
I2r = polar(I2);
I2arg =atan(imag(I2),real(I2))*180/%pi;
mprintf('Voltage across R2 and Xc = %0.0f arg(%0.0f degree) V \nVoltage across R1 = %0.0f arg(%0.0f degree) V \nCurrent through R1, I = %0.0f arg(%0.0f degree) A \nCurrent through R2, I1 = %0.0f arg(%0.0f degree) A \nCurrent through capacitor, I2 = %0.2f arg(%0.0f degree) A',V1r,V1arg,V2r,V2arg,Ir,Iarg,I1r,I1arg,I2r,I2arg);