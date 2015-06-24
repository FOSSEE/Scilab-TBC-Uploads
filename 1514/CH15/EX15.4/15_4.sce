//chapter 15
//example 15.4
//page 463
clear all;
clc ;
//given
vomax=5;//op voltage max
Vf=0.7;//forward voltage drop across diode
f=5;//frequency of oscillation
I1=1;//current through inverting terminal mA,diodes are forward biased
Av=29;//voltage gain
R1=100*(vomax/(Av*I1));
R1=floor(R1)*10;
printf("\nR1=%d kohm,use standard value 150 kohm",R1);R1=150;
R2=Av*R1/1000;
R2=4.4;
printf("\nR2=%.1f kohm",(R2));
R4=2*Vf/I1;
printf("\nR4=%.1f kohm,use standard value 1.5 kohm",R4);R4=1.5;
R5=R2-R4;
printf("\nR5=%.1f kohm",R5);
R6=0.4*R5;
printf("\nR61=%.2f kohm,use standard value 1 kohm",R6);R6=1;
R7=0.8*R5;
printf("\nR71=%.2f kohm,use standard value 2.7 kohm",R7);R7=2.7;
R3=R2;
printf("\nR3=%.1f kohm,use standard value 4.7 kohm",R3);
C=1000/(2*%pi*R1*f*sqrt(6));
printf("\nc=%.3f microF, standard value 0.082",C)


