clear;
clc;
//Example 17.3
Vr=-1.05;
Vbe=0.7;
Vb5=Vr+Vbe;
printf('\nVb5 =%.2fV\n',Vb5)
R1=0.250;
i1=-Vb5/R1;
printf('\ni1=%.3f mA\n',i1)
Vy=0.7;
V2=-5.2;
//let R1+R2=x
x=(-2*Vy-V2)/i1;
R2=x-R1;
printf('\nR2=%.3f KOhm\n',R2)
iS=i1;
Rs=(Vr-V2)/iS;
printf('\nRs=%.3f KOhm\n',Rs)
