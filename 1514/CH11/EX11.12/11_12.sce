//chapter 11
//example 11.12
//page 338
clear all;
clc ;
//given
Rl=50;//load resistance in kohm
Vcc=12;//supply voltage V
f1=150;//lower cutoff frequency Hz
Vp=50;////op voltage mV
hfe=70;
ip=Vp/Rl;
Ie2=2;//Ie2>ip
Ve2=5;
R4=Ve2/Ie2;
printf("\nR4= %.1f kohm ,use standard value 2.2 kohm",R4);R4=2.2;
Ic2=2;
Ic1=Ic2;
VR1=Vcc-(Ve2+0.7);
R1=VR1/Ic1;
printf("\nR1= %.2f kohm,use standard value 3.3 kohm ",R1);R1=3.3;
Ib1=1000*Ic1/hfe;
R23=1000*(Ve2-0.7)/Ib1;
R2=47;
R3=R23-R2;
hfe1=100;hie1=1;
Zi=1000*(R2*hie1)/(R2+hie1);
XC1=Zi/10;
C1=10^6/(2*%pi*f1*XC1);
printf("\nC1=%.1f microF,use standard value 15 microF",C1);
XC2=floor(R3/100);
C2=10^3/(2*%pi*f1*XC2);
printf("\nC2=%.2f microF,use standard value 1.2 microF",(C2));
XC3=Rl;
C3=10^6/(2*%pi*f1*XC3);
printf("\nC3=%.1f microF,use standard value 22 microF",(C3));

