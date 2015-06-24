//Part B Chapter 4 Example 14
clc;
clear;
close;
tau_s=60;//N/mm^2
//Forces on pulley A, B & C
A1=3000;//N
A2=1000;//N
B1=1200;//N
B2=2200;//N
C1=1000;//N
C2=2250;//N
dA=250;//mm
dB=250;//mm
dC=200;//mm
TA=(A1-A2)*dA/2;//Nmm
TB=(B2-B1)*dB/2;//Nmm
TC=(C2-C1)*dC/2;//Nmm
T=max(TA,TB,TC);//Nmm(Max. Torque)
d=(T/tau_s/(%pi/16))^(1/3);//mm
disp("Safe diameter of shaft is "+string(d)+" mm");
