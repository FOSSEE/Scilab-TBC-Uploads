clear;
clc;
V=230;//per phase
V_ml=sqrt(3)*sqrt(2)*V;
f=50;
w=2*%pi*f;
a1=60;
L=0.015;
i_cp=(sqrt(3)*V_ml/(w*L))*(1-sind(a1));    printf("circulating current=%.4f A",i_cp);