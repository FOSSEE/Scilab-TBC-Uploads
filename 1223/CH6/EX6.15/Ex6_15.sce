clear;
clc;
//Example 6.15
Vtn1=1.2;
Vtn2=1.2;
Kn1=0.8;
Kn2=0.8;
//x=R1+R2+R3=300
x=300;
Rs=10;
Idq=0.4;
Vdsq1=2.5;
Vdsq2=2.5;
Vs1=Idq*Rs-5;
printf('\ndc voltage at source of M1=%.2f V\n',Vs1)
Vgs=sqrt(Idq/Kn1)+Vtn1;
printf('\ngate to source voltage=%.2f V\n',Vgs)
R3=(Vgs+Vs1)*x/5;
printf('\nR3=%.2f KOhm\n',R3)
Vs2=Vdsq2+Vs1;
printf('\nvoltage at source of M2=%.2f V\n',Vs2)
//y=R2+R3
y=(Vgs+Vs2)*x/5;
printf('\nR2+R3=%.2f KOhm\n',y)
R2=150;
R1=x-y;
printf('\nR1=%.2f KOhm\n',R1)
R3=y-R2;
printf('\nR3=%.2f KOhm\n',R3)
Vd2=Vdsq2+Vs2;
printf('\nvoltage at drain of M2 =%.2fV\n',Vd2)
Rd=(5-Vd2)/Idq;
printf('\ndrain resistance=%.2f KOhm\n',Rd)
