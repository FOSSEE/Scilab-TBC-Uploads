//Example 1.14(b)

clear;

clc;

R1=10*10^3;

R2=20*10^3;

RL=2*10^3;///Load Resistance

vI=3;//Input Voltage

IQ=0.5*10^(-3);

vO=-(R2/R1)*vI;//Output Voltage

iL=-vO/RL;//Current through RL

i1=vI/R1;//Cuurent through R1

i2=i1;//Current through R2 (as current sunk by the op amp is 0)

iO=i2+iL;//Output Current

iCC=IQ;

iEE=iCC+iO;

VCC=15;

VEE=-15;

IQ=0.5*10^(-3);

pOA=(VCC-VEE)*IQ+(vO-VEE)*iO;//Power Dissipated in the Op Amp

printf("Power Dissipated inside the op amp=%.2f mW",(pOA*1000));