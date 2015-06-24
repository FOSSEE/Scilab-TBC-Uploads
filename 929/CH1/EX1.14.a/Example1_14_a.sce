//Example 1.14(a)

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

printf("iCC=%.2f mA",(iCC*1000));

printf("\niEE=%.2f mA",(iEE*1000));

printf("\niO=%.2f mA",(iO*1000));