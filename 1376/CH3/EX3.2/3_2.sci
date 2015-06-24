// 3.2
clc;
I=1000;
Ia=50*10^-3;
Is=I-Ia;
Ra=10;
Va=Ia*Ra;
Rs=10*Va/Is;
printf("The shunt resistance=%.2f ohm",Rs)
