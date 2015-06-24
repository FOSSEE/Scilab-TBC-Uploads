clc;
P=2000;    //power in Watt
V=120;     //potential diff in volt
I=P/V;     //current in Ampere
s=2*10^-3;   //distance in m
K=2*10^-7;   //constant in N/A square
F=(I*I*K)/s;    //calculating force per metre
disp(F,"Force in Newton per metre in opposite direction = ");   //displaying result