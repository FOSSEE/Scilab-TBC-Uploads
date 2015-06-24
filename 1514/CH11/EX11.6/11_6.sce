//chapter 11
//example 11.6
//page 325
clear all;
clc ;
//given
Rl=120;
hfe=100;
hie=1;
R1=120;R5=R1;
R2=39;R6=R2;
R7=12;R3=12;
Zi1=1000/(1/R1+1/R2+1/hie);
Zo=R7;
Zi2=1/(1/R5+1/R6+1/hie);
printf("\nInput Impedance:\nZi1=Zi2=%d ohm\nOutput Impedance:\nZo=%d kohm",Zi1,Zo);
Rp=((R3*Zi2)/(R3+Zi2))
Av1=ceil(-hfe*Rp/hie);

Av2=ceil(-hfe*(R7*Rl/(R7+Rl))/hie);

Av=(Av1*Av2)-10;
printf("\noverall voltage gain(Av)= %d ",Av)

