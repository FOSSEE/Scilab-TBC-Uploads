clear;
clc;
V_s=2*230;//V
V_o=(sqrt(2)*V_s)/%pi;
R=60;//ohm
P_dc=(V_o)^2/R;
TUF=0.2865;
VA=P_dc/TUF;    printf("kVA rating of the transformer=%.1f kVA",VA/1000);