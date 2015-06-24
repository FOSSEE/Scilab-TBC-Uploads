clear;
clc;
//Example 11.10
Kn1=0.1;
Kn2=Kn1;
Kn3=0.1;
Kn4=Kn3;
R1=30;
Vtn=1;
Rd=16;
//I1=(20-Vgs4)/R1 and I1=Kn3*(Vgs4-Vtn)^2
Vgs4=poly(0,'Vgs4')
p=poly([-1 -17 9],'Vgs4','c')
printf('\nroots=%.2fV\n',roots(p))
Vgs4=2.40;
I1=(20-Vgs4)/R1;
printf('\nI1=%.2f mA\n',I1)
Iq=I1;
Id1=Iq/2;
printf('\nId1 and Id2 =%.2fmA\n',Id1)
Vgs1=sqrt(Id1/Kn1)+Vtn;
printf('\nVgs1 and Vgs2 =%.2fV\n',Vgs1)
vo1=10-Id1*Rd;
printf('\nvo1 and vo2=%.2f V\n',vo1)
Vds1=Vgs1-Vtn;
printf('\nVds1=Vds2=Vds1(sat)=%.2f V\n',Vds1)
Vcm=vo1-Vds1+Vgs1;
printf('\nVcm max=%.2f V\n',Vcm)
Vds4=Vgs4-Vtn;
printf('\nVds4=%.2f V\n',Vds4)
Vcm2=Vgs1+Vds4-10;
printf('\nVcm min=%.2fV\n',Vcm2)
