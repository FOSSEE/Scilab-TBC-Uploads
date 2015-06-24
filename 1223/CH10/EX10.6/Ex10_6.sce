clear;
clc;
//Example 10.6
V1=5;
V2=-5;
Vbe=0.6;
Veb=0.6;
Iq2=400*10^-3;//mA
Iref=200*10^-3;//mA
Iq1=Iref;
Iq3=Iq1;
Iq4=600*10^-6;
R1=(V1-Veb-Vbe-V2)/Iref;
printf('\nResistance R1=%.f KOhm\n',R1)
