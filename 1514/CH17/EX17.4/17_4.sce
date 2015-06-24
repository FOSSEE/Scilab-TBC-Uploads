//chapter 17
//example 17.4
//page 523
clear all;
clc ;
//given
Rl=100;//load resistance
Po=0.5;//output power
//peak output voltage
Vp=sqrt(2*Rl*Po);
//peak output current
Ip=1000*(2*Po)/Vp;
Vr6=0.1*Vp;
Vr7=Vr6;
R6=1000*Vr6/Ip;
R7=R6;
//quiscent current
Iq2=Ip/10;
//dc voltage across R4
Vr4dc=0.7+10^-3*Iq2*(R6+R7)+0.7;
//bias components for Q2 &Q3
deltaVB=Vp+Vr6;
Vce1dc=deltaVB+1;
Vr3dc=Vce1dc;
Vr5=5;//bias stabiliy
Vcc=Vr5+Vce1dc+Vr4dc+Vr3dc;
printf("\nVCC=%.1f V,use VCC=30 V",Vcc);Vcc=30;
//Icq1>>Ibmax
hfe=50;//assuming equal for all 3 Xtors
Ibmax=Ip/hfe;
Icq1=10;
R3=Vr3dc/Icq1;
R4=1000*Vr4dc/Icq1;
printf("\nR3=%.1f kohm, standard value ",R3);
printf("\nR4=%d kohm,use standard value 200 ohm",ceil(R4));
printf("\nR6=R7=%d ohm",R6);


