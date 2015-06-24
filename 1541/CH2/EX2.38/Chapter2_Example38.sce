//Chapter-2, Example 2.38, Page 2.71
//=============================================================================
clc
clear

//INPUT DATA
T=4;//Total loss in kW
Q=120;//Rating of transformer in KVA
DF=4;//Duration of operation at full load in h
DH=4;//Duration of operation at half load in h
DN=16;//Duration of operation at no load in h

//CALCULATIONS
EF=(Q*1*T);//Energy delivered for 4 hours full load in kWh
EH=(0.5*Q*1*T);//Energy delivered for 4 hours half load in kWh
EN=0;//Energy delivered for 16 hours
E24=(EH+EF+EN);//Total energy deliverd for 24 hours in kWh
C=(1.5*24);//Constant losses for 24 hours in kWh
C4=(1.5*4);//full load copper losses for 4 hours in kWh
Ch4=(0.5^2*1.5*4);//Half load copper losses for 4 hours in kWh
CN=0;//No load copper loss for 16 hours
TE=(C+C4+Ch4+CN);//Total energy losses for 24 hours
n=(E24/(E24+TE))*100;//All day efficiency

//OUTPUT
mprintf('All day efficiency is %3.1f percent',n)

//=================================END OF PROGRAM==============================
