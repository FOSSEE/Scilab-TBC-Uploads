//Ex:2.33
clc;
clear;
close;
G=30;// Power Gain
D=42;// directivity
n=G/D;// effeciency
Rl=25;// loss-resistance in ohm
Rr=(n*Rl)/(1-n);// radiation resistance in ohm
printf("The radiation resistance = %f ohm", Rr);