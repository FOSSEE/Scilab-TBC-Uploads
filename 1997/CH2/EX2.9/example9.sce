//Chapter-2 example 2.9
//=============================================================================
clc;
clear;
Pt=500000;//peal power in watts
F=10*10^9;//operating frequency in hz
MRP=0.1*10^-12;//minimum receivable power in pico watts
Ac=5;//capture area of antenna in m^2;
RCS=20;//radar cross sectional area in m^2;
Vo=3*10^8//velocity in m/s
// calculations
lamda =Vo/F
Rmax=((Pt*Ac*Ac*RCS)/(4*%pi*lamda*lamda*MRP))^0.25

//output
mprintf('Maximum Radar Range is %3.1f kms',Rmax/1000);
