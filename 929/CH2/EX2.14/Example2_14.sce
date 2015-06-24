//Example 2.14

clear;

clc;

//2.14(a)

Rs=120;

Vref=15;

imax=20*10^(-3);

Vb=2*Rs*imax;

Vtap=Vb/2;

Vtapch=0.01*Vtap;

v1=Vtap+Vtapch;

v2=Vtap-Vtapch;

v1ch=v1-v2;

i=v1ch/((Rs*Rs)/(Rs+Rs));

R1=(Vtap/i)-630;

R2=1000;

i3=2*imax+(4.8/R2);

R3=(2/i3)+6-0.642857 ;

R4=((Vref-(R3/2)*i3-Vb)/i3)-3;

printf("(a) R1=%.2f kohms",R1*10^(-3));

printf("\n    R2=%.f kohms",R2*10^(-3));

printf("\n    R3=%.f ohms",R3);

printf("\n    R4=%.f ohms",R4);

//2.14(b)

printf("\n\n(b) To calibrate, first adjust R2 so that with no strain we get vO=o V. Then supply a known strain, preferably near the full scale, and adjust R3 for the desired value of vO.");