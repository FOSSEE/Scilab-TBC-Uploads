clear;
clc;
//Example 6.14
Kn1=500*10^-3;
Kn2=200*10^-3;
Vtn1=1.2;
Vtn2=Vtn1;
Idq1=0.2;
Idq2=0.5;
Vdsq1=6;
Vdsq2=6;
Ri=100;
Rsi=4;
Rs2=(10-Vdsq2)/Idq2;
printf('\nRs2=%.2f KOhm\n',Rs2)
Vgs2=sqrt(Idq2/Kn2)+Vtn2;
printf('\ngate to source voltage for M2=%.2f V\n',Vgs2)
Vs2=-1;
Vg2=Vs2+Vgs2;
printf('\ngate voltage of M2=%.2f V\n',Vg2)
Vg1=Vg2;
Rd1=(5-Vg1)/Idq1;
printf('\nresistor Rd1=%.2f KOhm\n',Rd1)
Vs1=Vg1-Vdsq1;
printf('\nsource voltage of M1=%.2f KOhm\n',Vs1)
Rs1=(Vs1+5)/Idq1;
printf('\nresistor Rs1=%.2f KOhm\n',Rs1)
Vgs1=sqrt(Idq1/Kn1)+Vtn1;
printf('\ngate to source voltage for M1=%.2f V\n',Vgs1)
R1=Ri*10/(Vgs1+Idq1*Rs1);
printf('\nR1=%.2f KOhm\n',R1)
//Ri=R1*R2/(R1+R2)
R2=Ri*R1/(R1-Ri);
printf('\nR2=%.2f KOhm\n',R2)
