clear;
clc;
//Example 14.5
Ao=2*10^5;
fPD=5;
fT=fPD*Ao;
printf('\nunity gain bandwidth=%.e Hz\n',fT)
f3dB=20*10^3;
Acl=fT/f3dB;
printf('\nclosed loop gain=%.2f\n',Acl)
