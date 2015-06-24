//Ex:2.11
clc;
clear;
close;
G=20;// Power Gain
D=22;// directivity
n=G/D;// effeciency
Rl=10;// loss-resistance in ohm
Rr=(n*Rl)/(1-n);// radiation resistance in ohm
printf("The radiation resistance = %f ohm", Rr);