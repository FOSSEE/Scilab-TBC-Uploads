//Ex:2.4
clc;
clear;
close;
Rr=80;// radiation resistance in ohm
Rl=10;// loss-resistance in ohm
n=Rr/(Rr+Rl);// effeciency
G=20;// Power Gain
D=G/n;// directivity
printf("The directivity = %f", D);