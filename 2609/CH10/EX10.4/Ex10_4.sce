////Ex 10.4
clc;
clear;
close;
format('v',5);
VZ1=4.7;//V
VZ2=4.7;//V
R1=68;//kohm
R2=15;//kohm
Vout=VZ1+0.7;//V(As one zener diode is always forward biased)
VR1=Vout;//V
IR1=VR1/R1*1000;//micro A
IR2=IR1;//micro A
VR2=IR2*10^-3*R2;//V
Vout=VR1+VR2;//V
VUTP=(R2/(R1+R2))*Vout;//V
VLTP=(R2/(R1+R2))*(-Vout);//V
disp(VUTP,"VUTP(V)");
disp(VLTP,"VLTP(V)");
