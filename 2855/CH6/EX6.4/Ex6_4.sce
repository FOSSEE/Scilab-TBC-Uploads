//chapter6
//page no 148
//example 6-4
//given
clear;clc;
Vcc=5;//in volt
Icc=24;//in mA
Vset=0.65;//in volt
Vf=1.5;//in volt
IMOD=15;//in mA
TA=25;//in degree celsius
Pdynamic=(Vcc-Vf-Vset)*Icc;
disp("mW",Pdynamic,"Power dissipation under dynamic condition")
Pstatic=(Vcc*Icc);
disp("mW",Pstatic,"power dissipation under static condition")
PD=Pdynamic+Pstatic;
disp("mW",PD,"total power dissipation")
//Tj=TA+PD*wj_a;
TA=25;//in degree cel
wj_a=84;//degree cel/w
PD=188.4;       //mW
Tj=TA+PD*10^-3*wj_a;
printf("\n Temp. of junction temp %0.0f degree C",Tj)

