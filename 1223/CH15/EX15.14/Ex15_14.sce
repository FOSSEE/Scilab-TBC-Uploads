clear;
clc;
//Example 15.14
Vonl=5;
Vofl=4.96;
I1=0.005;
I2=1.5;
dVo=Vonl-Vofl;
dIo=I1-I2;
Rvf=-dVo/dIo;
printf('\noutput resistance=%f Ohm\n',Rvf)
LR=100*(Vonl-Vofl)/Vonl;
printf('\nload regulation =%.2f\n',LR)
