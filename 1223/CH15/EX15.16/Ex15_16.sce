clear;
clc;
//Example 15.16
Vz=6.3;
Vbe=0.6;
Veb=0.6;
Vo=8;
R1=3.9;
R2=3.4;
R3=0.576;
Ic3=(Vz-3*Vbe)/(R1+R2+R3);
printf('\nbias current =%.3f mA\n',Ic3)
Vb7=Ic3*R1+2*Vbe;
printf('\ntemperature compensated reference voltage=%.2f V\n',Vb7)
R13=2.23;
R12=R13*Vo/Vb7-R13;
printf('\nR12=%.2f KOhm\n',R12)
