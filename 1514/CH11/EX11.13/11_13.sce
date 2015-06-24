//chapter 11
//example 11.13
//page 342
clear all;
clc ;
//given
Rl=180;//load resistance in kohm
Vcc=20;//supply voltage V
f1=150;//lower cutoff frequency Hz
Zi=500;//ip impedance kohm
Idmax=2;//drain current mA
Vgs=-4.1;//gate to source voltage
Vpmax=6;//maximum peak voltage
Vdsmin=Vpmax+1+Vgs;
Vr34=Vcc-Vdsmin;
VR31=8.5;
VR41=VR31;Id=2;
R3=VR31/Id;
R4=R3;
printf("\nR4=R3= %.2f kohm ,use standard value 3.9 kohm",R4);R4=3.9;
VR3=Id*R4;
VR4=VR3;
VR2=VR4+Vgs;
VR1=Vcc-VR2;
R2=560;//assuming
R1=10^-3*(VR1*R2)/VR2;
printf("\nR1= %.1f Mohm,use standard value 2.7 Mohm ",R1);R1=2.7;
Ic2=1;
VR5=VR3-0.7;
R5=VR5/Ic2;
printf("\nR5= %.1f kohm,use standard value 6.8 kohm ",R5);R5=6.8;
Ic2=VR5/R5;
VR6=Vcc-VR5-3;
R6=VR6/Ic2;
printf("\nR6= %.1f kohm,use standard value 8.2 kohm ",R6);R6=8.2;//R6<<Rl




