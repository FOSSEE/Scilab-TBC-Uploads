// Caption: Finding speed and output power
clear;
close;
clc;
E_ao=250*1200/1100;//at 1200 r/min
E_a=250-400*.025;//at Ia=400A
n=240*1200/261;//actual spped
P_em=240*400;
disp(P_em,'electromagnetic power=')
