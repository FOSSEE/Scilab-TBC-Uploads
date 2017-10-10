//chapter 18
//example 18.2
//page 559
clear;
clc ;
//given
Rl=15;//load resistance
ep=30;//peak input voltage
Vg=0.5;//Trigger voltage
Ig=10;//trigger current in microA
//at 5 degrees
a=(5*%pi)/180;
ei1=ep*sin(a);
//at 90 degrees 
ei2=ep;
//when SCR triggers 
Vt=Vg+0.7+(10^-6*Ig*Rl);
//to trigger SCR at ei=2.6V,moving contact of R2 must be at the top
Vr2r3=Vt;
Vr1=ei1-Vt;
I1min=100;//microA
R1=1000*Vr1/I1min;
printf("\nR1=%d kohm,standard value 12 kohm",R1);R1=12;
I11=floor(10^3*Vr1/R1);
R23=10^3*Vt/I11;
I1=ei2/(R1+R23);//I1=1.35;
//to trigger SCR at ei=30V,moving contact of R2 must be at the bottom
R3=(10^3*Vt/I1);
printf("\nR3=%d ohm,standard value 820 ohm",R3);R3=820;R23=10.3;
R2=R23-R3/1000;
printf("\nR2=%.2f kohm,standard value 10 kohm",R2);R2=10;