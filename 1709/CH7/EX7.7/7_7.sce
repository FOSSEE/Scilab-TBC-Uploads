clc
//Initialization of variables
disp("Critical tables suggest,")
Tc=344 //R
Pc=673 //psia
P1=20 //psia
P2=500 //psia
M=16
T=560 //R
//calculations
pr1=P1/Pc
pr2=P2/Pc
Tr=T/Tc
dh2=0.65*Tc
dsp=0.35 //B/lbm mol R
dsp2=0.018-dsp- 1545/778 *log(P2/P1)
W=dh2-dsp2*T
W2=W/M
//results
printf("Work per pound mass = %d B/lbm",W2)
//The answer is a bit different due to rounding off error
